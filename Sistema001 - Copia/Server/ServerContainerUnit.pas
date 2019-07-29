unit ServerContainerUnit;

interface

uses
  SysUtils, Classes,
  DSTCPServerTransport,
  DSServer, DSCommonServer, DSAuth,IPPeerServer
  ,DSHTTPCommon,DSHTTP,Generics.Collections,IndyPeerImpl,SqlExpr
  ,DB, DSService,
  DBXDataSnap, DBXCommon, DSHTTPLayer, DBXinterbase,vcl.forms;

type
  TServerContainer = class(TDataModule)
    DSServer: TDSServer;
    DSTCPServerTransport: TDSTCPServerTransport;
    DSServerClassGen: TDSServerClass;
    CMHTTPService: TDSHTTPService;
    CMAuthManager: TDSAuthenticationManager;
    procedure DSServerClassGenGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure CMAuthManagerUserAuthorize(Sender: TObject;
      AuthorizeEventObject: TDSAuthorizeEventObject; var valid: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
      ListofConnection : TDictionary<Integer,TSQLConnection>;
    { Private declarations }
    //Number of minutes to monitor at any given time for thrashing.
    FThrashingWindow: Integer;
    //Maximum number of requests to allow within the thrashing window for a single session
    FMaxRequestsInWindow: Integer;
    //SessionId - Date of the first request within the past 5 minutes
    FHitTimes: TObjectDictionary<String,TDateTime>;
    //SessionId - Number of requests happened within the thrashing window
    FHitCounts: TObjectDictionary<String,Integer>;
  public
     function GetConnection : TSQLConnection;
    //This will clear the cahced info for the session, resetting the hit time and count.
    procedure SessionClosed(SessionId: String);

    property ThrashingWindow: Integer read FThrashingWindow write FThrashingWindow;
    property MaxRequestsInWindow: Integer read FMaxRequestsInWindow write FMaxRequestsInWindow;

  end;

var
  ServerContainer: TServerContainer;

implementation

uses Windows,   ServerMethodsUnitGen, Dialogs, DSSession, U_Principal,inifiles;

{$R *.dfm}

function elapsedSeconds(StartTime, LaterTime : TDateTime) : Integer;
var
  Aux: TDateTime;
  TimeStamp : TTimeStamp;
begin
  //make sure that the value of 'StartTime' is always the smallest of the two.
  if StartTime > LaterTime then
  begin
    Aux := StartTime;
    StartTime := LaterTime;
    LaterTime := Aux;
  end;

  //Computes the elapsed seconds between two dates.
  TimeStamp := DateTimeToTimeStamp(LaterTime - StartTime);
  Dec(TimeStamp.Date, TTimeStamp(DateTimeToTimeStamp(0)).Date);

  Result := (TimeStamp.Time div 1000) + (TimeStamp.Date * 24 * 60 * 60);
end;



procedure TServerContainer.CMAuthManagerUserAuthorize(Sender: TObject;
                                                      AuthorizeEventObject: TDSAuthorizeEventObject;
                                                      var valid: Boolean);
var
  Session: TDSSession;
  StartTime: TDateTime;
  elapsedSecs: Integer;
  elapsedMinutes: Integer;
  HitCount: Integer;
begin
  //Set valid to true by default. Will only be set to false if disconnecting the user
  valid := True;

  //Get the Session for the client making the invocation attempt
  Session := TDSSessionManager.Instance.GetThreadSession;

  if Session <> nil then
  begin
    //If this isn't the user's first request of the session, then check if they are
    //abusing the server by making calls too often.
    if FHitTimes.ContainsKey(Session.SessionName) then
    begin
      if FHitTimes.TryGetValue(Session.SessionName, StartTime) then
      begin
        //compute elapsed time since the first call within the 'thrashing window'.
        //The window is an amount of time where the number of requests to the server are counted
        //and if the maximum allowed request limit is exceeded within that time period, then the
        //client is disconnected. Otherwise, the counts get set back to the beginning and
        //the window starts over.
        elapsedSecs := elapsedSeconds(StartTime, Now);
        if elapsedSecs > 0 then
          elapsedMinutes := Trunc(elapsedSecs / 60)
        else
          elapsedMinutes := 0;

        //If the window has expired, then reset the session's hit information
        if elapsedMinutes >= FThrashingWindow then
        begin
          FHitTimes.AddOrSetValue(Session.SessionName, Now);
          FHitCounts.AddOrSetValue(Session.SessionName, 1);
        end
        //otherwise, increment the hit count by one and check for thrashing
        else if FHitCounts.TryGetValue(Session.SessionName, HitCount) then
        begin
          Inc(HitCount);

          //if the number of invocations exceeds the maximum allowed in the time period, disconnect
          // the client and set valid to false for this call.
          if (HitCount > FMaxRequestsInWindow)  then
          begin
            valid := False;
            FSisNFServidor.ForceConnectionClose(Session.SessionName);
          end
          //Otherwise, simply increment the hit count for this session.
          else
          begin
            FHitCounts.AddOrSetValue(Session.SessionName, HitCount);
          end;
        end;
      end;
    end
    //Otherwise, if this is the first request of the session, then set
    //the cached session values appropriatly.
    else
    begin
      FHitTimes.AddOrSetValue(Session.SessionName, Now);
      FHitCounts.AddOrSetValue(Session.SessionName, 1);
    end;
  end;

end;

function TServerContainer.GetConnection: TSQLConnection;
var
  dbconn : TSQLConnection;
  Ini    : TInifile;
begin
//  CodeSite.Send('Thread ID', TDSSessionManager.GetThreadSession.Id);
   if ListofConnection.ContainsKey(TDSSessionManager.GetThreadSession.Id) then
      Result := ListofConnection[TDSSessionManager.GetThreadSession.Id]
   else
   begin
      //Cria a conexão
      Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\ConfServer.ini');
      dbconn := TSQLConnection.Create(nil);
      dbconn.Params.Clear;
      dbconn.LoadParamsOnConnect := False;
      dbconn.LoginPrompt := False;
      dbconn.ConnectionName := 'dbNawts';
      dbconn.DriverName := 'FIREBIRD';
      dbconn.LibraryName := 'dbexpint.dll';
      dbconn.VendorLib := 'fbclient.dll';
      dbconn.GetDriverFunc := 'getSQLDriverFIREBIRD';
      dbconn.Params.Add('DriverUnit=Data.DBXFirebird');
      dbconn.Params.Add('DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.bpl');
      dbconn.Params.Add('DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borland.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
      dbconn.Params.Add('MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFirebirdDriver210.bpl');
      dbconn.Params.Add('MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandFactory,Borland.Data.DbxFirebirdDriver,Version=21.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
      dbconn.Params.Add('GetDriverFunc=getSQLDriverINTERBASE');
      dbconn.Params.Add('LibraryName=dbxfb.dll');
      dbconn.Params.Add('LibraryNameOsx=libsqlfb.dylib');
      dbconn.Params.Add('VendorLib=fbclient.dll');
      dbconn.Params.Add('VendorLibWin64=fbclient.dll');
      dbconn.Params.Add('VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird');
      dbconn.Params.Add('Database=' + Ini.ReadString('BDPath' , 'Path','')); //C:\NawtsServer\DB\dbNAWTS.FDB');
      dbconn.Params.Add('User_Name=SYSDBA');
      dbconn.Params.Add('Password=masterkey');
      dbconn.Params.Add('Role=RoleName');
      dbconn.Params.Add('MaxBlobSize=-1');
      dbconn.Params.Add('LocaleCode=0000');
      dbconn.Params.Add('IsolationLevel=ReadCommitted');
      dbconn.Params.Add('SQLDialect=3');
      dbconn.Params.Add('CommitRetain=False');
      dbconn.Params.Add('WaitOnLocks=True');
      dbconn.Params.Add('TrimChar=False');
      dbconn.Params.Add('BlobSize=-1');
      dbconn.Params.Add('ErrorResourceFile=');
      dbconn.Params.Add('RoleName=RoleName');
      dbconn.Params.Add('ServerCharSet=');
      dbconn.Params.Add('Trim Char=False');
      ini.Free;
    ListofConnection.Add(TDSSessionManager.GetThreadSession.Id, dbconn);
    Result := dbconn;
  end;
end;

procedure TServerContainer.DataModuleCreate(Sender: TObject);
begin
  ListofConnection := TDictionary<Integer, TSQLConnection>.Create;
  FThrashingWindow := 1;
  FMaxRequestsInWindow := 65;

  FHitTimes := TObjectDictionary<String,TDateTime>.Create;
  FHitCounts := TObjectDictionary<String,Integer>.Create;
end;

procedure TServerContainer.DataModuleDestroy(Sender: TObject);
begin
  FSisNFServidor.PrepareForGracefulClose;
end;

procedure TServerContainer.DSServerClassGenGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass := ServerMethodsUnitGen.TServerMethodsGen;
end;


procedure TServerContainer.SessionClosed(SessionId: String);
begin
  FHitTimes.Remove(SessionId);
  FHitCounts.Remove(SessionId);
end;

end.


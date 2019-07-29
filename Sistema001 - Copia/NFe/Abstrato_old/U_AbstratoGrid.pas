unit U_AbstratoGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Abstrato001, System.Actions,
  Vcl.ActnList, AdvGlassButton, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Datasnap.DBClient, midaslib, ShellAPI, cxNavigator, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TF_AbstratoGrid = class(TF_Abstrato001)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    oCds: TClientDataSet;
    oDS: TDataSource;
    AdvGlassButton2: TAdvGlassButton;
    SaveDialog: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AbstratoGrid: TF_AbstratoGrid;

implementation

{$R *.dfm}

uses U_Export, UDM, U_Utils;

procedure TF_AbstratoGrid.AdvGlassButton2Click(Sender: TObject);
Var
  str: WideString;
  FileExt: String;
begin
  inherited;
  if SaveDialog.Execute then
  begin
    str := SaveDialog.FileName;
    ExportGrid(efExcelX, cxGrid1, str);
    // ShellExecute(self.Handle,nil,pchar(SaveDialog1.filename),nil,nil,SW_SHOW)
    if FileExists(str) then
    begin
      if Application.Messagebox
        (Pchar('Este arquivo já existe. Deseja sobrescrevê-lo?'),
        Pchar('Informação'), MB_YESNO + MB_ICONQUESTION) = mrNo then
      begin
        Exit;
      end;
    end;
    // ShellExecuteA(self.Handle,nil,'Excel',pAnsiChar(str),nil,SW_SHOW);
  end;
end;

procedure TF_AbstratoGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  tbSaveFormStatus(Self, Self.Name);
  cxGrid1DBTableView1.StoreToIniFile(ExtractFilePath(Application.ExeName) +
    '/arqconfig/' + Self.Name + 'grid.ini', true,
    [gsoUseFilter, gsoUseSummary]);
end;

procedure TF_AbstratoGrid.FormCreate(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  oCds.Open;
  Screen.Cursor := crDefault;
end;

procedure TF_AbstratoGrid.FormShow(Sender: TObject);
begin
  inherited;
  tbLoadFormStatus(Self, Self.Name);
  cxGrid1DBTableView1.RestoreFromIniFile(ExtractFilePath(Application.ExeName) +
    '/arqconfig/' + Self.Name + 'grid.ini', true, false,
    [gsoUseFilter, gsoUseSummary]);
end;

end.

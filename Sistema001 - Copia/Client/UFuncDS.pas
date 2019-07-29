//
// Created by the DataSnap proxy generator.
// 09/05/2014 15:59:43
//

unit UFuncDS;

interface

uses DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr, DBXDBReaders, DBXJSONReflect;

type
  TServerMethodsImpNFeClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FVerificaUsuarioCommand: TDBXCommand;
    FpUploadArquivoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function VerificaUsuario(value: string): Integer;
//    function pUploadArquivo(pArquivoJSON: TJSONArray; sCNPJ: string; sTipoArquivo: string): string;
  end;

  TServerMethodsCrivosNFeClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FVerificaSeqNumNFeCommand: TDBXCommand;
    FVerificaAliquotaNCMCommand: TDBXCommand;
    FLimpaBaseNFeCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function VerificaSeqNumNFe: Boolean;
    function VerificaAliquotaNCM(UF: string): Boolean;
    function LimpaBaseNFe: string;
  end;

  TServerMethodsGenClient = class(TDSAdminClient)
  private
    FLimpaTabCriticasCommand: TDBXCommand;
    FInputTABcr_000NCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function LimpaTabCriticas: Boolean;
    function InputTABcr_000N: Boolean;
  end;

  TServerMethodsImpSintegraClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FpUploadArquivoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
//    function pUploadArquivo(pArquivoJSON: TJSONArray; sCNPJ: string; sTipoArquivo: string): string;
  end;

  TServerMethodsImpSpedContribuicoesClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FpUploadArquivoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
//    function pUploadArquivo(pArquivoJSON: TJSONArray; sCNPJ: string; sTipoArquivo: string): string;
end;

implementation

function TServerMethodsImpNFeClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethodsImpNFe.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsImpNFeClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethodsImpNFe.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsImpNFeClient.VerificaUsuario(value: string): Integer;
begin
  if FVerificaUsuarioCommand = nil then
  begin
    FVerificaUsuarioCommand := FDBXConnection.CreateCommand;
    FVerificaUsuarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerificaUsuarioCommand.Text := 'TServerMethodsImpNFe.VerificaUsuario';
    FVerificaUsuarioCommand.Prepare;
  end;
  FVerificaUsuarioCommand.Parameters[0].Value.SetWideString(value);
  FVerificaUsuarioCommand.ExecuteUpdate;
  Result := FVerificaUsuarioCommand.Parameters[1].Value.GetInt32;
end;

//function TServerMethodsImpNFeClient.pUploadArquivo(pArquivoJSON: TJSONArray; sCNPJ: string; sTipoArquivo: string): string;
//begin
//  if FpUploadArquivoCommand = nil then
//  begin
//    FpUploadArquivoCommand := FDBXConnection.CreateCommand;
//    FpUploadArquivoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
//    FpUploadArquivoCommand.Text := 'TServerMethodsImpNFe.pUploadArquivo';
//    FpUploadArquivoCommand.Prepare;
//  end;
//  FpUploadArquivoCommand.Parameters[0].Value.SetJSONValue(pArquivoJSON, FInstanceOwner);
//  FpUploadArquivoCommand.Parameters[1].Value.SetWideString(sCNPJ);
//  FpUploadArquivoCommand.Parameters[2].Value.SetWideString(sTipoArquivo);
//  FpUploadArquivoCommand.ExecuteUpdate;
//  Result := FpUploadArquivoCommand.Parameters[3].Value.GetWideString;
//end;


constructor TServerMethodsImpNFeClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethodsImpNFeClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethodsImpNFeClient.Destroy;
begin
  FreeAndNil(FEchoStringCommand);
  FreeAndNil(FReverseStringCommand);
  FreeAndNil(FVerificaUsuarioCommand);
  FreeAndNil(FpUploadArquivoCommand);
  inherited;
end;

function TServerMethodsCrivosNFeClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethodsCrivosNFe.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsCrivosNFeClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethodsCrivosNFe.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsCrivosNFeClient.VerificaSeqNumNFe: Boolean;
begin
  if FVerificaSeqNumNFeCommand = nil then
  begin
    FVerificaSeqNumNFeCommand := FDBXConnection.CreateCommand;
    FVerificaSeqNumNFeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerificaSeqNumNFeCommand.Text := 'TServerMethodsCrivosNFe.VerificaSeqNumNFe';
    FVerificaSeqNumNFeCommand.Prepare;
  end;
  FVerificaSeqNumNFeCommand.ExecuteUpdate;
  Result := FVerificaSeqNumNFeCommand.Parameters[0].Value.GetBoolean;
end;

function TServerMethodsCrivosNFeClient.VerificaAliquotaNCM(UF: string): Boolean;
begin
  if FVerificaAliquotaNCMCommand = nil then
  begin
    FVerificaAliquotaNCMCommand := FDBXConnection.CreateCommand;
    FVerificaAliquotaNCMCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerificaAliquotaNCMCommand.Text := 'TServerMethodsCrivosNFe.VerificaAliquotaNCM';
    FVerificaAliquotaNCMCommand.Prepare;
  end;
  FVerificaAliquotaNCMCommand.Parameters[0].Value.SetWideString(UF);
  FVerificaAliquotaNCMCommand.ExecuteUpdate;
  Result := FVerificaAliquotaNCMCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsCrivosNFeClient.LimpaBaseNFe: string;
begin
  if FLimpaBaseNFeCommand = nil then
  begin
    FLimpaBaseNFeCommand := FDBXConnection.CreateCommand;
    FLimpaBaseNFeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLimpaBaseNFeCommand.Text := 'TServerMethodsCrivosNFe.LimpaBaseNFe';
    FLimpaBaseNFeCommand.Prepare;
  end;
  FLimpaBaseNFeCommand.ExecuteUpdate;
  Result := FLimpaBaseNFeCommand.Parameters[0].Value.GetWideString;
end;


constructor TServerMethodsCrivosNFeClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethodsCrivosNFeClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethodsCrivosNFeClient.Destroy;
begin
  FreeAndNil(FEchoStringCommand);
  FreeAndNil(FReverseStringCommand);
  FreeAndNil(FVerificaSeqNumNFeCommand);
  FreeAndNil(FVerificaAliquotaNCMCommand);
  FreeAndNil(FLimpaBaseNFeCommand);
  inherited;
end;

function TServerMethodsGenClient.LimpaTabCriticas: Boolean;
begin
  if FLimpaTabCriticasCommand = nil then
  begin
    FLimpaTabCriticasCommand := FDBXConnection.CreateCommand;
    FLimpaTabCriticasCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLimpaTabCriticasCommand.Text := 'TServerMethodsGen.LimpaTabCriticas';
    FLimpaTabCriticasCommand.Prepare;
  end;
  FLimpaTabCriticasCommand.ExecuteUpdate;
  Result := FLimpaTabCriticasCommand.Parameters[0].Value.GetBoolean;
end;

function TServerMethodsGenClient.InputTABcr_000N: Boolean;
begin
  if FInputTABcr_000NCommand = nil then
  begin
    FInputTABcr_000NCommand := FDBXConnection.CreateCommand;
    FInputTABcr_000NCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInputTABcr_000NCommand.Text := 'TServerMethodsGen.InputTABcr_000N';
    FInputTABcr_000NCommand.Prepare;
  end;
  FInputTABcr_000NCommand.ExecuteUpdate;
  Result := FInputTABcr_000NCommand.Parameters[0].Value.GetBoolean;
end;


constructor TServerMethodsGenClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethodsGenClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethodsGenClient.Destroy;
begin
  FreeAndNil(FLimpaTabCriticasCommand);
  FreeAndNil(FInputTABcr_000NCommand);
  inherited;
end;

function TServerMethodsImpSintegraClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethodsImpSintegra.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsImpSintegraClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethodsImpSintegra.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

//function TServerMethodsImpSintegraClient.pUploadArquivo(pArquivoJSON: TJSONArray; sCNPJ: string; sTipoArquivo: string): string;
//begin
//  if FpUploadArquivoCommand = nil then
//  begin
//    FpUploadArquivoCommand := FDBXConnection.CreateCommand;
//    FpUploadArquivoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
//    FpUploadArquivoCommand.Text := 'TServerMethodsImpSintegra.pUploadArquivo';
//    FpUploadArquivoCommand.Prepare;
//  end;
//  FpUploadArquivoCommand.Parameters[0].Value.SetJSONValue(pArquivoJSON, FInstanceOwner);
//  FpUploadArquivoCommand.Parameters[1].Value.SetWideString(sCNPJ);
//  FpUploadArquivoCommand.Parameters[2].Value.SetWideString(sTipoArquivo);
//  FpUploadArquivoCommand.ExecuteUpdate;
//  Result := FpUploadArquivoCommand.Parameters[3].Value.GetWideString;
//end;


constructor TServerMethodsImpSintegraClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethodsImpSintegraClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethodsImpSintegraClient.Destroy;
begin
  FreeAndNil(FEchoStringCommand);
  FreeAndNil(FReverseStringCommand);
  FreeAndNil(FpUploadArquivoCommand);
  inherited;
end;

function TServerMethodsImpSpedContribuicoesClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethodsImpSpedContribuicoes.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsImpSpedContribuicoesClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethodsImpSpedContribuicoes.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

//function TServerMethodsImpSpedContribuicoesClient.pUploadArquivo(pArquivoJSON: TJSONArray; sCNPJ: string; sTipoArquivo: string): string;
//begin
//  if FpUploadArquivoCommand = nil then
//  begin
//    FpUploadArquivoCommand := FDBXConnection.CreateCommand;
//    FpUploadArquivoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
//    FpUploadArquivoCommand.Text := 'TServerMethodsImpSpedContribuicoes.pUploadArquivo';
//    FpUploadArquivoCommand.Prepare;
//  end;
//  FpUploadArquivoCommand.Parameters[0].Value.SetJSONValue(pArquivoJSON, FInstanceOwner);
//  FpUploadArquivoCommand.Parameters[1].Value.SetWideString(sCNPJ);
//  FpUploadArquivoCommand.Parameters[2].Value.SetWideString(sTipoArquivo);
//  FpUploadArquivoCommand.ExecuteUpdate;
//  Result := FpUploadArquivoCommand.Parameters[3].Value.GetWideString;
//end;


constructor TServerMethodsImpSpedContribuicoesClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethodsImpSpedContribuicoesClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethodsImpSpedContribuicoesClient.Destroy;
begin
  FreeAndNil(FEchoStringCommand);
  FreeAndNil(FReverseStringCommand);
  FreeAndNil(FpUploadArquivoCommand);
  inherited;
end;

end.


//
// Created by the DataSnap proxy generator.
// 31/07/2019 23:13:49
//

unit U_FuncServer;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethodsGenClient = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FVerificaUsuarioCommand: TDBXCommand;
    FUpdateSenhaUsuarioCommand: TDBXCommand;
    FGetNextIdNfeEntradaCommand: TDBXCommand;
    FGetNextIdOPQuimicoCommand: TDBXCommand;
    FGetNextIdFormulaCommand: TDBXCommand;
    FGetNextIdOrdemEnvaseCommand: TDBXCommand;
    FDeletaNFeEntradaCommand: TDBXCommand;
    FDeletaEstoqueInsumosCommand: TDBXCommand;
    FDeletaNFeItensCommand: TDBXCommand;
    FGetNextIdProducaoEnvaseCommand: TDBXCommand;
    FDeletaOrdemEnvaseCommand: TDBXCommand;
    FDeletaEnvaseDetalheCommand: TDBXCommand;
    FIBaixaEstoqueCommand: TDBXCommand;
    FIBaixaEstoqueQuimicoCommand: TDBXCommand;
    FDeletaOPQuimicoCommand: TDBXCommand;
    FDeletaOPQuimicoDetalheCommand: TDBXCommand;
    FIEstoqueQuimicoCommand: TDBXCommand;
    FIProdutoOPQuimicoCommand: TDBXCommand;
    FIBaixaEstoqueOPCommand: TDBXCommand;
    FGetNextIdSequencialCommand: TDBXCommand;
    FDeleteIdSequencialCommand: TDBXCommand;
    FZerarSequencialCommand: TDBXCommand;
    FGetNextFichaSequencialCommand: TDBXCommand;
    FAvisoEstoqueOrdemProducaoCommand: TDBXCommand;
    FGetNextIdUserCommand: TDBXCommand;
    FGetCodProdutoCommand: TDBXCommand;
    FGetNextIdPedidoCommand: TDBXCommand;
    FGetCodInsumoCommand: TDBXCommand;
    FGetTeveAumentoCommand: TDBXCommand;
    FVlrSequencialCommand: TDBXCommand;
    FGetNextIdEstoqueQuimCommand: TDBXCommand;
    FIEstoqueProdutoAcabadoCommand: TDBXCommand;
    FIPermissaoCommand: TDBXCommand;
    FGetPermissaoCommand: TDBXCommand;
    FGetIdUserCommand: TDBXCommand;
    FGetIDUsuarioCommand: TDBXCommand;
    FIdInsumoCommand: TDBXCommand;
    FGetNextIdCICommand: TDBXCommand;
    FGetNextIdFormCommand: TDBXCommand;
    FGetNextCDSCICommand: TDBXCommand;
    FGetNomeCommand: TDBXCommand;
    FGetNextIdMPEspCommand: TDBXCommand;
    FGetNextIdEMBEspCommand: TDBXCommand;
    FControlEspMPCommand: TDBXCommand;
    FControlEspEMBCommand: TDBXCommand;
    FUsoCICommand: TDBXCommand;
    FGetNextIDExpCommand: TDBXCommand;
    FGetNextIDExpDetalheCommand: TDBXCommand;
    FIEstProdAcabadoCommand: TDBXCommand;
    FIEstExpCommand: TDBXCommand;
    FGetIdProdutoCommand: TDBXCommand;
    FVerificaNFCommand: TDBXCommand;
    FInsertEstExpCommand: TDBXCommand;
    FRetornoDataCommand: TDBXCommand;
    FPreencherLoteCommand: TDBXCommand;
    FNextSeqLoteCommand: TDBXCommand;
    FNextSeqRegisCommand: TDBXCommand;
    FNextSeqAprovCommand: TDBXCommand;
    FNextSeqReprovCommand: TDBXCommand;
    FNextSeqQuarentCommand: TDBXCommand;
    FGetNextNewIdFomulaNewCommand: TDBXCommand;
    FexceSqlCommand: TDBXCommand;
    FIEntradaEstoqueEnvaseCommand: TDBXCommand;
    FISaidaEstoqueEnvaseCommand: TDBXCommand;
    FOPExpedicaoCommand: TDBXCommand;
    FIDeletaRegistroCommand: TDBXCommand;
    FInsertAuditoriaCommand: TDBXCommand;
    FDeletaPermissoesCommand: TDBXCommand;
    FGetNextIDEstoqueExpCommand: TDBXCommand;
    FExistMPFormulaCommand: TDBXCommand;
    FFormulaExistCommand: TDBXCommand;
    FEstInsumoCommand: TDBXCommand;
    FGetRevisaoCommand: TDBXCommand;
    FNextControleOpCommand: TDBXCommand;
    FSumControleOpCommand: TDBXCommand;
    FDeletaOrdemDetalheCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    function VerificaUsuario(sLogin: string; sSenha: string): Integer;
    procedure UpdateSenhaUsuario(sLogin: string; sSenha: string);
    function GetNextIdNfeEntrada: Integer;
    function GetNextIdOPQuimico: Integer;
    function GetNextIdFormula: Integer;
    function GetNextIdOrdemEnvase: Integer;
    function DeletaNFeEntrada(idNFeEntrada: Integer): Integer;
    function DeletaEstoqueInsumos(idEstoqueInsumo: Integer): Integer;
    function DeletaNFeItens(idNfeItens: Integer): Integer;
    function GetNextIdProducaoEnvase: Integer;
    function DeletaOrdemEnvase(idEnvase: Integer): Integer;
    function DeletaEnvaseDetalhe(idEnvase: Integer): Integer;
    function IBaixaEstoque(idInsumo: Integer; idOrdemEnvase: Integer; idControle: Integer; Qtd: Double): Integer;
    function IBaixaEstoqueQuimico(idMatPrima: Integer; idOrdemQuimico: Integer; Qtd: Double; sLote: string; sQtde: string): Integer;
    function DeletaOPQuimico(idOrdemProducao: Integer): Integer;
    function DeletaOPQuimicoDetalhe(idOrdemProducao: Integer): Integer;
    function IEstoqueQuimico(idProduto: Integer; idOrdemProducao: Integer; Qtd: Double): Integer;
    function IProdutoOPQuimico(idProduto: Integer; idOrdemProducao: Integer; Qtd: Double; Perc: Double): Integer;
    function IBaixaEstoqueOP(idProduto: Integer; idOrdemProducao: Integer; Qtd: Double): Integer;
    function GetNextIdSequencial: Integer;
    function DeleteIdSequencial: Integer;
    function ZerarSequencial: Integer;
    function GetNextFichaSequencial: Integer;
    function AvisoEstoqueOrdemProducao(idOrdemProducao: Integer): Double;
    function GetNextIdUser: Integer;
    function GetCodProduto(idCodProduto: Integer): string;
    function GetNextIdPedido: Integer;
    function GetCodInsumo(id: Integer): string;
    function GetTeveAumento(idCodProd: Integer; idForn: Integer): Double;
    function VlrSequencial(Vlr: Integer): Boolean;
    function GetNextIdEstoqueQuim: Integer;
    function IEstoqueProdutoAcabado(idProduto: Integer; Qtd: Double; Obs: string): Integer;
    function IPermissao(idUser: Integer; idTipo: Integer; sNomeForm: string): Boolean;
    function GetPermissao(idUser: Integer; sNomeForm: string): Integer;
    function GetIdUser: Integer;
    function GetIDUsuario(sLogin: string; sSenha: string): Integer;
    function IdInsumo(cod: string): Integer;
    function GetNextIdCI: Integer;
    function GetNextIdForm: Integer;
    function GetNextCDSCI: Integer;
    function GetNome(iduser: Integer): string;
    function GetNextIdMPEsp: Integer;
    function GetNextIdEMBEsp: Integer;
    function ControlEspMP(idMP: Integer): Boolean;
    function ControlEspEMB(idProduto: Integer): Boolean;
    function UsoCI(idseq: Integer): Boolean;
    function GetNextIDExp: Integer;
    function GetNextIDExpDetalhe: Integer;
    function IEstProdAcabado(idOP: Integer; idProd: Integer; Lote: string; Qtd: Double): Boolean;
    function IEstExp(idOp: Integer; idProd: Integer; Qtd: Double): Boolean;
    function GetIdProduto(iCod: string): Integer;
    function VerificaNF(nf: string): Boolean;
    function InsertEstExp(idOP: Integer; idProd: Integer; Qtd: Double): Boolean;
    function RetornoData(Lote: string): string;
    function PreencherLote(idMP: Integer; Qtd: Double): string;
    function NextSeqLote: Integer;
    function NextSeqRegis: Integer;
    function NextSeqAprov: Integer;
    function NextSeqReprov: Integer;
    function NextSeqQuarent: Integer;
    function GetNextNewIdFomulaNew: Integer;
    function exceSql(sSql: string): Boolean;
    function IEntradaEstoqueEnvase(idInsumo: Integer; idOrdemEnvase: Integer; idControle: Integer; Qtd: Double): Integer;
    function ISaidaEstoqueEnvase(idInsumo: Integer; idOrdemEnvase: Integer; Qtd: Double): Integer;
    function OPExpedicao(idprod: Integer; idop: Integer): Double;
    procedure IDeletaRegistro(sLogin: string; sForm: string);
    procedure InsertAuditoria(iid: string; sTabela: string; sCampo: string; sValorNovo: string; sValorAntigo: string; sTipoalteracao: string; sUsuario: string; sObs: string);
    function DeletaPermissoes(idusuario: Integer): Integer;
    function GetNextIDEstoqueExp: Integer;
    function ExistMPFormula(idForm: Integer; idMP: Integer): Boolean;
    function FormulaExist(codProd: string): Boolean;
    function EstInsumo(idInsumo: Integer): string;
    function GetRevisao(idProduto: Integer): Integer;
    function NextControleOp: Integer;
    function SumControleOp(idOp: Integer): Double;
    function DeletaOrdemDetalhe(idOrdem: string): Boolean;
  end;

implementation

procedure TServerMethodsGenClient.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TServerMethodsGen.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

function TServerMethodsGenClient.VerificaUsuario(sLogin: string; sSenha: string): Integer;
begin
  if FVerificaUsuarioCommand = nil then
  begin
    FVerificaUsuarioCommand := FDBXConnection.CreateCommand;
    FVerificaUsuarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerificaUsuarioCommand.Text := 'TServerMethodsGen.VerificaUsuario';
    FVerificaUsuarioCommand.Prepare;
  end;
  FVerificaUsuarioCommand.Parameters[0].Value.SetWideString(sLogin);
  FVerificaUsuarioCommand.Parameters[1].Value.SetWideString(sSenha);
  FVerificaUsuarioCommand.ExecuteUpdate;
  Result := FVerificaUsuarioCommand.Parameters[2].Value.GetInt32;
end;

procedure TServerMethodsGenClient.UpdateSenhaUsuario(sLogin: string; sSenha: string);
begin
  if FUpdateSenhaUsuarioCommand = nil then
  begin
    FUpdateSenhaUsuarioCommand := FDBXConnection.CreateCommand;
    FUpdateSenhaUsuarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateSenhaUsuarioCommand.Text := 'TServerMethodsGen.UpdateSenhaUsuario';
    FUpdateSenhaUsuarioCommand.Prepare;
  end;
  FUpdateSenhaUsuarioCommand.Parameters[0].Value.SetWideString(sLogin);
  FUpdateSenhaUsuarioCommand.Parameters[1].Value.SetWideString(sSenha);
  FUpdateSenhaUsuarioCommand.ExecuteUpdate;
end;

function TServerMethodsGenClient.GetNextIdNfeEntrada: Integer;
begin
  if FGetNextIdNfeEntradaCommand = nil then
  begin
    FGetNextIdNfeEntradaCommand := FDBXConnection.CreateCommand;
    FGetNextIdNfeEntradaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdNfeEntradaCommand.Text := 'TServerMethodsGen.GetNextIdNfeEntrada';
    FGetNextIdNfeEntradaCommand.Prepare;
  end;
  FGetNextIdNfeEntradaCommand.ExecuteUpdate;
  Result := FGetNextIdNfeEntradaCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIdOPQuimico: Integer;
begin
  if FGetNextIdOPQuimicoCommand = nil then
  begin
    FGetNextIdOPQuimicoCommand := FDBXConnection.CreateCommand;
    FGetNextIdOPQuimicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdOPQuimicoCommand.Text := 'TServerMethodsGen.GetNextIdOPQuimico';
    FGetNextIdOPQuimicoCommand.Prepare;
  end;
  FGetNextIdOPQuimicoCommand.ExecuteUpdate;
  Result := FGetNextIdOPQuimicoCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIdFormula: Integer;
begin
  if FGetNextIdFormulaCommand = nil then
  begin
    FGetNextIdFormulaCommand := FDBXConnection.CreateCommand;
    FGetNextIdFormulaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdFormulaCommand.Text := 'TServerMethodsGen.GetNextIdFormula';
    FGetNextIdFormulaCommand.Prepare;
  end;
  FGetNextIdFormulaCommand.ExecuteUpdate;
  Result := FGetNextIdFormulaCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIdOrdemEnvase: Integer;
begin
  if FGetNextIdOrdemEnvaseCommand = nil then
  begin
    FGetNextIdOrdemEnvaseCommand := FDBXConnection.CreateCommand;
    FGetNextIdOrdemEnvaseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdOrdemEnvaseCommand.Text := 'TServerMethodsGen.GetNextIdOrdemEnvase';
    FGetNextIdOrdemEnvaseCommand.Prepare;
  end;
  FGetNextIdOrdemEnvaseCommand.ExecuteUpdate;
  Result := FGetNextIdOrdemEnvaseCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.DeletaNFeEntrada(idNFeEntrada: Integer): Integer;
begin
  if FDeletaNFeEntradaCommand = nil then
  begin
    FDeletaNFeEntradaCommand := FDBXConnection.CreateCommand;
    FDeletaNFeEntradaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeletaNFeEntradaCommand.Text := 'TServerMethodsGen.DeletaNFeEntrada';
    FDeletaNFeEntradaCommand.Prepare;
  end;
  FDeletaNFeEntradaCommand.Parameters[0].Value.SetInt32(idNFeEntrada);
  FDeletaNFeEntradaCommand.ExecuteUpdate;
  Result := FDeletaNFeEntradaCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.DeletaEstoqueInsumos(idEstoqueInsumo: Integer): Integer;
begin
  if FDeletaEstoqueInsumosCommand = nil then
  begin
    FDeletaEstoqueInsumosCommand := FDBXConnection.CreateCommand;
    FDeletaEstoqueInsumosCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeletaEstoqueInsumosCommand.Text := 'TServerMethodsGen.DeletaEstoqueInsumos';
    FDeletaEstoqueInsumosCommand.Prepare;
  end;
  FDeletaEstoqueInsumosCommand.Parameters[0].Value.SetInt32(idEstoqueInsumo);
  FDeletaEstoqueInsumosCommand.ExecuteUpdate;
  Result := FDeletaEstoqueInsumosCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.DeletaNFeItens(idNfeItens: Integer): Integer;
begin
  if FDeletaNFeItensCommand = nil then
  begin
    FDeletaNFeItensCommand := FDBXConnection.CreateCommand;
    FDeletaNFeItensCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeletaNFeItensCommand.Text := 'TServerMethodsGen.DeletaNFeItens';
    FDeletaNFeItensCommand.Prepare;
  end;
  FDeletaNFeItensCommand.Parameters[0].Value.SetInt32(idNfeItens);
  FDeletaNFeItensCommand.ExecuteUpdate;
  Result := FDeletaNFeItensCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIdProducaoEnvase: Integer;
begin
  if FGetNextIdProducaoEnvaseCommand = nil then
  begin
    FGetNextIdProducaoEnvaseCommand := FDBXConnection.CreateCommand;
    FGetNextIdProducaoEnvaseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdProducaoEnvaseCommand.Text := 'TServerMethodsGen.GetNextIdProducaoEnvase';
    FGetNextIdProducaoEnvaseCommand.Prepare;
  end;
  FGetNextIdProducaoEnvaseCommand.ExecuteUpdate;
  Result := FGetNextIdProducaoEnvaseCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.DeletaOrdemEnvase(idEnvase: Integer): Integer;
begin
  if FDeletaOrdemEnvaseCommand = nil then
  begin
    FDeletaOrdemEnvaseCommand := FDBXConnection.CreateCommand;
    FDeletaOrdemEnvaseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeletaOrdemEnvaseCommand.Text := 'TServerMethodsGen.DeletaOrdemEnvase';
    FDeletaOrdemEnvaseCommand.Prepare;
  end;
  FDeletaOrdemEnvaseCommand.Parameters[0].Value.SetInt32(idEnvase);
  FDeletaOrdemEnvaseCommand.ExecuteUpdate;
  Result := FDeletaOrdemEnvaseCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.DeletaEnvaseDetalhe(idEnvase: Integer): Integer;
begin
  if FDeletaEnvaseDetalheCommand = nil then
  begin
    FDeletaEnvaseDetalheCommand := FDBXConnection.CreateCommand;
    FDeletaEnvaseDetalheCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeletaEnvaseDetalheCommand.Text := 'TServerMethodsGen.DeletaEnvaseDetalhe';
    FDeletaEnvaseDetalheCommand.Prepare;
  end;
  FDeletaEnvaseDetalheCommand.Parameters[0].Value.SetInt32(idEnvase);
  FDeletaEnvaseDetalheCommand.ExecuteUpdate;
  Result := FDeletaEnvaseDetalheCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.IBaixaEstoque(idInsumo: Integer; idOrdemEnvase: Integer; idControle: Integer; Qtd: Double): Integer;
begin
  if FIBaixaEstoqueCommand = nil then
  begin
    FIBaixaEstoqueCommand := FDBXConnection.CreateCommand;
    FIBaixaEstoqueCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIBaixaEstoqueCommand.Text := 'TServerMethodsGen.IBaixaEstoque';
    FIBaixaEstoqueCommand.Prepare;
  end;
  FIBaixaEstoqueCommand.Parameters[0].Value.SetInt32(idInsumo);
  FIBaixaEstoqueCommand.Parameters[1].Value.SetInt32(idOrdemEnvase);
  FIBaixaEstoqueCommand.Parameters[2].Value.SetInt32(idControle);
  FIBaixaEstoqueCommand.Parameters[3].Value.SetDouble(Qtd);
  FIBaixaEstoqueCommand.ExecuteUpdate;
  Result := FIBaixaEstoqueCommand.Parameters[4].Value.GetInt32;
end;

function TServerMethodsGenClient.IBaixaEstoqueQuimico(idMatPrima: Integer; idOrdemQuimico: Integer; Qtd: Double; sLote: string; sQtde: string): Integer;
begin
  if FIBaixaEstoqueQuimicoCommand = nil then
  begin
    FIBaixaEstoqueQuimicoCommand := FDBXConnection.CreateCommand;
    FIBaixaEstoqueQuimicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIBaixaEstoqueQuimicoCommand.Text := 'TServerMethodsGen.IBaixaEstoqueQuimico';
    FIBaixaEstoqueQuimicoCommand.Prepare;
  end;
  FIBaixaEstoqueQuimicoCommand.Parameters[0].Value.SetInt32(idMatPrima);
  FIBaixaEstoqueQuimicoCommand.Parameters[1].Value.SetInt32(idOrdemQuimico);
  FIBaixaEstoqueQuimicoCommand.Parameters[2].Value.SetDouble(Qtd);
  FIBaixaEstoqueQuimicoCommand.Parameters[3].Value.SetWideString(sLote);
  FIBaixaEstoqueQuimicoCommand.Parameters[4].Value.SetWideString(sQtde);
  FIBaixaEstoqueQuimicoCommand.ExecuteUpdate;
  Result := FIBaixaEstoqueQuimicoCommand.Parameters[5].Value.GetInt32;
end;

function TServerMethodsGenClient.DeletaOPQuimico(idOrdemProducao: Integer): Integer;
begin
  if FDeletaOPQuimicoCommand = nil then
  begin
    FDeletaOPQuimicoCommand := FDBXConnection.CreateCommand;
    FDeletaOPQuimicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeletaOPQuimicoCommand.Text := 'TServerMethodsGen.DeletaOPQuimico';
    FDeletaOPQuimicoCommand.Prepare;
  end;
  FDeletaOPQuimicoCommand.Parameters[0].Value.SetInt32(idOrdemProducao);
  FDeletaOPQuimicoCommand.ExecuteUpdate;
  Result := FDeletaOPQuimicoCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.DeletaOPQuimicoDetalhe(idOrdemProducao: Integer): Integer;
begin
  if FDeletaOPQuimicoDetalheCommand = nil then
  begin
    FDeletaOPQuimicoDetalheCommand := FDBXConnection.CreateCommand;
    FDeletaOPQuimicoDetalheCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeletaOPQuimicoDetalheCommand.Text := 'TServerMethodsGen.DeletaOPQuimicoDetalhe';
    FDeletaOPQuimicoDetalheCommand.Prepare;
  end;
  FDeletaOPQuimicoDetalheCommand.Parameters[0].Value.SetInt32(idOrdemProducao);
  FDeletaOPQuimicoDetalheCommand.ExecuteUpdate;
  Result := FDeletaOPQuimicoDetalheCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.IEstoqueQuimico(idProduto: Integer; idOrdemProducao: Integer; Qtd: Double): Integer;
begin
  if FIEstoqueQuimicoCommand = nil then
  begin
    FIEstoqueQuimicoCommand := FDBXConnection.CreateCommand;
    FIEstoqueQuimicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIEstoqueQuimicoCommand.Text := 'TServerMethodsGen.IEstoqueQuimico';
    FIEstoqueQuimicoCommand.Prepare;
  end;
  FIEstoqueQuimicoCommand.Parameters[0].Value.SetInt32(idProduto);
  FIEstoqueQuimicoCommand.Parameters[1].Value.SetInt32(idOrdemProducao);
  FIEstoqueQuimicoCommand.Parameters[2].Value.SetDouble(Qtd);
  FIEstoqueQuimicoCommand.ExecuteUpdate;
  Result := FIEstoqueQuimicoCommand.Parameters[3].Value.GetInt32;
end;

function TServerMethodsGenClient.IProdutoOPQuimico(idProduto: Integer; idOrdemProducao: Integer; Qtd: Double; Perc: Double): Integer;
begin
  if FIProdutoOPQuimicoCommand = nil then
  begin
    FIProdutoOPQuimicoCommand := FDBXConnection.CreateCommand;
    FIProdutoOPQuimicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIProdutoOPQuimicoCommand.Text := 'TServerMethodsGen.IProdutoOPQuimico';
    FIProdutoOPQuimicoCommand.Prepare;
  end;
  FIProdutoOPQuimicoCommand.Parameters[0].Value.SetInt32(idProduto);
  FIProdutoOPQuimicoCommand.Parameters[1].Value.SetInt32(idOrdemProducao);
  FIProdutoOPQuimicoCommand.Parameters[2].Value.SetDouble(Qtd);
  FIProdutoOPQuimicoCommand.Parameters[3].Value.SetDouble(Perc);
  FIProdutoOPQuimicoCommand.ExecuteUpdate;
  Result := FIProdutoOPQuimicoCommand.Parameters[4].Value.GetInt32;
end;

function TServerMethodsGenClient.IBaixaEstoqueOP(idProduto: Integer; idOrdemProducao: Integer; Qtd: Double): Integer;
begin
  if FIBaixaEstoqueOPCommand = nil then
  begin
    FIBaixaEstoqueOPCommand := FDBXConnection.CreateCommand;
    FIBaixaEstoqueOPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIBaixaEstoqueOPCommand.Text := 'TServerMethodsGen.IBaixaEstoqueOP';
    FIBaixaEstoqueOPCommand.Prepare;
  end;
  FIBaixaEstoqueOPCommand.Parameters[0].Value.SetInt32(idProduto);
  FIBaixaEstoqueOPCommand.Parameters[1].Value.SetInt32(idOrdemProducao);
  FIBaixaEstoqueOPCommand.Parameters[2].Value.SetDouble(Qtd);
  FIBaixaEstoqueOPCommand.ExecuteUpdate;
  Result := FIBaixaEstoqueOPCommand.Parameters[3].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIdSequencial: Integer;
begin
  if FGetNextIdSequencialCommand = nil then
  begin
    FGetNextIdSequencialCommand := FDBXConnection.CreateCommand;
    FGetNextIdSequencialCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdSequencialCommand.Text := 'TServerMethodsGen.GetNextIdSequencial';
    FGetNextIdSequencialCommand.Prepare;
  end;
  FGetNextIdSequencialCommand.ExecuteUpdate;
  Result := FGetNextIdSequencialCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.DeleteIdSequencial: Integer;
begin
  if FDeleteIdSequencialCommand = nil then
  begin
    FDeleteIdSequencialCommand := FDBXConnection.CreateCommand;
    FDeleteIdSequencialCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteIdSequencialCommand.Text := 'TServerMethodsGen.DeleteIdSequencial';
    FDeleteIdSequencialCommand.Prepare;
  end;
  FDeleteIdSequencialCommand.ExecuteUpdate;
  Result := FDeleteIdSequencialCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.ZerarSequencial: Integer;
begin
  if FZerarSequencialCommand = nil then
  begin
    FZerarSequencialCommand := FDBXConnection.CreateCommand;
    FZerarSequencialCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FZerarSequencialCommand.Text := 'TServerMethodsGen.ZerarSequencial';
    FZerarSequencialCommand.Prepare;
  end;
  FZerarSequencialCommand.ExecuteUpdate;
  Result := FZerarSequencialCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextFichaSequencial: Integer;
begin
  if FGetNextFichaSequencialCommand = nil then
  begin
    FGetNextFichaSequencialCommand := FDBXConnection.CreateCommand;
    FGetNextFichaSequencialCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextFichaSequencialCommand.Text := 'TServerMethodsGen.GetNextFichaSequencial';
    FGetNextFichaSequencialCommand.Prepare;
  end;
  FGetNextFichaSequencialCommand.ExecuteUpdate;
  Result := FGetNextFichaSequencialCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.AvisoEstoqueOrdemProducao(idOrdemProducao: Integer): Double;
begin
  if FAvisoEstoqueOrdemProducaoCommand = nil then
  begin
    FAvisoEstoqueOrdemProducaoCommand := FDBXConnection.CreateCommand;
    FAvisoEstoqueOrdemProducaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAvisoEstoqueOrdemProducaoCommand.Text := 'TServerMethodsGen.AvisoEstoqueOrdemProducao';
    FAvisoEstoqueOrdemProducaoCommand.Prepare;
  end;
  FAvisoEstoqueOrdemProducaoCommand.Parameters[0].Value.SetInt32(idOrdemProducao);
  FAvisoEstoqueOrdemProducaoCommand.ExecuteUpdate;
  Result := FAvisoEstoqueOrdemProducaoCommand.Parameters[1].Value.GetDouble;
end;

function TServerMethodsGenClient.GetNextIdUser: Integer;
begin
  if FGetNextIdUserCommand = nil then
  begin
    FGetNextIdUserCommand := FDBXConnection.CreateCommand;
    FGetNextIdUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdUserCommand.Text := 'TServerMethodsGen.GetNextIdUser';
    FGetNextIdUserCommand.Prepare;
  end;
  FGetNextIdUserCommand.ExecuteUpdate;
  Result := FGetNextIdUserCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetCodProduto(idCodProduto: Integer): string;
begin
  if FGetCodProdutoCommand = nil then
  begin
    FGetCodProdutoCommand := FDBXConnection.CreateCommand;
    FGetCodProdutoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCodProdutoCommand.Text := 'TServerMethodsGen.GetCodProduto';
    FGetCodProdutoCommand.Prepare;
  end;
  FGetCodProdutoCommand.Parameters[0].Value.SetInt32(idCodProduto);
  FGetCodProdutoCommand.ExecuteUpdate;
  Result := FGetCodProdutoCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsGenClient.GetNextIdPedido: Integer;
begin
  if FGetNextIdPedidoCommand = nil then
  begin
    FGetNextIdPedidoCommand := FDBXConnection.CreateCommand;
    FGetNextIdPedidoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdPedidoCommand.Text := 'TServerMethodsGen.GetNextIdPedido';
    FGetNextIdPedidoCommand.Prepare;
  end;
  FGetNextIdPedidoCommand.ExecuteUpdate;
  Result := FGetNextIdPedidoCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetCodInsumo(id: Integer): string;
begin
  if FGetCodInsumoCommand = nil then
  begin
    FGetCodInsumoCommand := FDBXConnection.CreateCommand;
    FGetCodInsumoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCodInsumoCommand.Text := 'TServerMethodsGen.GetCodInsumo';
    FGetCodInsumoCommand.Prepare;
  end;
  FGetCodInsumoCommand.Parameters[0].Value.SetInt32(id);
  FGetCodInsumoCommand.ExecuteUpdate;
  Result := FGetCodInsumoCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsGenClient.GetTeveAumento(idCodProd: Integer; idForn: Integer): Double;
begin
  if FGetTeveAumentoCommand = nil then
  begin
    FGetTeveAumentoCommand := FDBXConnection.CreateCommand;
    FGetTeveAumentoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetTeveAumentoCommand.Text := 'TServerMethodsGen.GetTeveAumento';
    FGetTeveAumentoCommand.Prepare;
  end;
  FGetTeveAumentoCommand.Parameters[0].Value.SetInt32(idCodProd);
  FGetTeveAumentoCommand.Parameters[1].Value.SetInt32(idForn);
  FGetTeveAumentoCommand.ExecuteUpdate;
  Result := FGetTeveAumentoCommand.Parameters[2].Value.GetDouble;
end;

function TServerMethodsGenClient.VlrSequencial(Vlr: Integer): Boolean;
begin
  if FVlrSequencialCommand = nil then
  begin
    FVlrSequencialCommand := FDBXConnection.CreateCommand;
    FVlrSequencialCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVlrSequencialCommand.Text := 'TServerMethodsGen.VlrSequencial';
    FVlrSequencialCommand.Prepare;
  end;
  FVlrSequencialCommand.Parameters[0].Value.SetInt32(Vlr);
  FVlrSequencialCommand.ExecuteUpdate;
  Result := FVlrSequencialCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsGenClient.GetNextIdEstoqueQuim: Integer;
begin
  if FGetNextIdEstoqueQuimCommand = nil then
  begin
    FGetNextIdEstoqueQuimCommand := FDBXConnection.CreateCommand;
    FGetNextIdEstoqueQuimCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdEstoqueQuimCommand.Text := 'TServerMethodsGen.GetNextIdEstoqueQuim';
    FGetNextIdEstoqueQuimCommand.Prepare;
  end;
  FGetNextIdEstoqueQuimCommand.ExecuteUpdate;
  Result := FGetNextIdEstoqueQuimCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.IEstoqueProdutoAcabado(idProduto: Integer; Qtd: Double; Obs: string): Integer;
begin
  if FIEstoqueProdutoAcabadoCommand = nil then
  begin
    FIEstoqueProdutoAcabadoCommand := FDBXConnection.CreateCommand;
    FIEstoqueProdutoAcabadoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIEstoqueProdutoAcabadoCommand.Text := 'TServerMethodsGen.IEstoqueProdutoAcabado';
    FIEstoqueProdutoAcabadoCommand.Prepare;
  end;
  FIEstoqueProdutoAcabadoCommand.Parameters[0].Value.SetInt32(idProduto);
  FIEstoqueProdutoAcabadoCommand.Parameters[1].Value.SetDouble(Qtd);
  FIEstoqueProdutoAcabadoCommand.Parameters[2].Value.SetWideString(Obs);
  FIEstoqueProdutoAcabadoCommand.ExecuteUpdate;
  Result := FIEstoqueProdutoAcabadoCommand.Parameters[3].Value.GetInt32;
end;

function TServerMethodsGenClient.IPermissao(idUser: Integer; idTipo: Integer; sNomeForm: string): Boolean;
begin
  if FIPermissaoCommand = nil then
  begin
    FIPermissaoCommand := FDBXConnection.CreateCommand;
    FIPermissaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIPermissaoCommand.Text := 'TServerMethodsGen.IPermissao';
    FIPermissaoCommand.Prepare;
  end;
  FIPermissaoCommand.Parameters[0].Value.SetInt32(idUser);
  FIPermissaoCommand.Parameters[1].Value.SetInt32(idTipo);
  FIPermissaoCommand.Parameters[2].Value.SetWideString(sNomeForm);
  FIPermissaoCommand.ExecuteUpdate;
  Result := FIPermissaoCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethodsGenClient.GetPermissao(idUser: Integer; sNomeForm: string): Integer;
begin
  if FGetPermissaoCommand = nil then
  begin
    FGetPermissaoCommand := FDBXConnection.CreateCommand;
    FGetPermissaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetPermissaoCommand.Text := 'TServerMethodsGen.GetPermissao';
    FGetPermissaoCommand.Prepare;
  end;
  FGetPermissaoCommand.Parameters[0].Value.SetInt32(idUser);
  FGetPermissaoCommand.Parameters[1].Value.SetWideString(sNomeForm);
  FGetPermissaoCommand.ExecuteUpdate;
  Result := FGetPermissaoCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethodsGenClient.GetIdUser: Integer;
begin
  if FGetIdUserCommand = nil then
  begin
    FGetIdUserCommand := FDBXConnection.CreateCommand;
    FGetIdUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetIdUserCommand.Text := 'TServerMethodsGen.GetIdUser';
    FGetIdUserCommand.Prepare;
  end;
  FGetIdUserCommand.ExecuteUpdate;
  Result := FGetIdUserCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetIDUsuario(sLogin: string; sSenha: string): Integer;
begin
  if FGetIDUsuarioCommand = nil then
  begin
    FGetIDUsuarioCommand := FDBXConnection.CreateCommand;
    FGetIDUsuarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetIDUsuarioCommand.Text := 'TServerMethodsGen.GetIDUsuario';
    FGetIDUsuarioCommand.Prepare;
  end;
  FGetIDUsuarioCommand.Parameters[0].Value.SetWideString(sLogin);
  FGetIDUsuarioCommand.Parameters[1].Value.SetWideString(sSenha);
  FGetIDUsuarioCommand.ExecuteUpdate;
  Result := FGetIDUsuarioCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethodsGenClient.IdInsumo(cod: string): Integer;
begin
  if FIdInsumoCommand = nil then
  begin
    FIdInsumoCommand := FDBXConnection.CreateCommand;
    FIdInsumoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIdInsumoCommand.Text := 'TServerMethodsGen.IdInsumo';
    FIdInsumoCommand.Prepare;
  end;
  FIdInsumoCommand.Parameters[0].Value.SetWideString(cod);
  FIdInsumoCommand.ExecuteUpdate;
  Result := FIdInsumoCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIdCI: Integer;
begin
  if FGetNextIdCICommand = nil then
  begin
    FGetNextIdCICommand := FDBXConnection.CreateCommand;
    FGetNextIdCICommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdCICommand.Text := 'TServerMethodsGen.GetNextIdCI';
    FGetNextIdCICommand.Prepare;
  end;
  FGetNextIdCICommand.ExecuteUpdate;
  Result := FGetNextIdCICommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIdForm: Integer;
begin
  if FGetNextIdFormCommand = nil then
  begin
    FGetNextIdFormCommand := FDBXConnection.CreateCommand;
    FGetNextIdFormCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdFormCommand.Text := 'TServerMethodsGen.GetNextIdForm';
    FGetNextIdFormCommand.Prepare;
  end;
  FGetNextIdFormCommand.ExecuteUpdate;
  Result := FGetNextIdFormCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextCDSCI: Integer;
begin
  if FGetNextCDSCICommand = nil then
  begin
    FGetNextCDSCICommand := FDBXConnection.CreateCommand;
    FGetNextCDSCICommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextCDSCICommand.Text := 'TServerMethodsGen.GetNextCDSCI';
    FGetNextCDSCICommand.Prepare;
  end;
  FGetNextCDSCICommand.ExecuteUpdate;
  Result := FGetNextCDSCICommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNome(iduser: Integer): string;
begin
  if FGetNomeCommand = nil then
  begin
    FGetNomeCommand := FDBXConnection.CreateCommand;
    FGetNomeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNomeCommand.Text := 'TServerMethodsGen.GetNome';
    FGetNomeCommand.Prepare;
  end;
  FGetNomeCommand.Parameters[0].Value.SetInt32(iduser);
  FGetNomeCommand.ExecuteUpdate;
  Result := FGetNomeCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsGenClient.GetNextIdMPEsp: Integer;
begin
  if FGetNextIdMPEspCommand = nil then
  begin
    FGetNextIdMPEspCommand := FDBXConnection.CreateCommand;
    FGetNextIdMPEspCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdMPEspCommand.Text := 'TServerMethodsGen.GetNextIdMPEsp';
    FGetNextIdMPEspCommand.Prepare;
  end;
  FGetNextIdMPEspCommand.ExecuteUpdate;
  Result := FGetNextIdMPEspCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIdEMBEsp: Integer;
begin
  if FGetNextIdEMBEspCommand = nil then
  begin
    FGetNextIdEMBEspCommand := FDBXConnection.CreateCommand;
    FGetNextIdEMBEspCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIdEMBEspCommand.Text := 'TServerMethodsGen.GetNextIdEMBEsp';
    FGetNextIdEMBEspCommand.Prepare;
  end;
  FGetNextIdEMBEspCommand.ExecuteUpdate;
  Result := FGetNextIdEMBEspCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.ControlEspMP(idMP: Integer): Boolean;
begin
  if FControlEspMPCommand = nil then
  begin
    FControlEspMPCommand := FDBXConnection.CreateCommand;
    FControlEspMPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FControlEspMPCommand.Text := 'TServerMethodsGen.ControlEspMP';
    FControlEspMPCommand.Prepare;
  end;
  FControlEspMPCommand.Parameters[0].Value.SetInt32(idMP);
  FControlEspMPCommand.ExecuteUpdate;
  Result := FControlEspMPCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsGenClient.ControlEspEMB(idProduto: Integer): Boolean;
begin
  if FControlEspEMBCommand = nil then
  begin
    FControlEspEMBCommand := FDBXConnection.CreateCommand;
    FControlEspEMBCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FControlEspEMBCommand.Text := 'TServerMethodsGen.ControlEspEMB';
    FControlEspEMBCommand.Prepare;
  end;
  FControlEspEMBCommand.Parameters[0].Value.SetInt32(idProduto);
  FControlEspEMBCommand.ExecuteUpdate;
  Result := FControlEspEMBCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsGenClient.UsoCI(idseq: Integer): Boolean;
begin
  if FUsoCICommand = nil then
  begin
    FUsoCICommand := FDBXConnection.CreateCommand;
    FUsoCICommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUsoCICommand.Text := 'TServerMethodsGen.UsoCI';
    FUsoCICommand.Prepare;
  end;
  FUsoCICommand.Parameters[0].Value.SetInt32(idseq);
  FUsoCICommand.ExecuteUpdate;
  Result := FUsoCICommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsGenClient.GetNextIDExp: Integer;
begin
  if FGetNextIDExpCommand = nil then
  begin
    FGetNextIDExpCommand := FDBXConnection.CreateCommand;
    FGetNextIDExpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIDExpCommand.Text := 'TServerMethodsGen.GetNextIDExp';
    FGetNextIDExpCommand.Prepare;
  end;
  FGetNextIDExpCommand.ExecuteUpdate;
  Result := FGetNextIDExpCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIDExpDetalhe: Integer;
begin
  if FGetNextIDExpDetalheCommand = nil then
  begin
    FGetNextIDExpDetalheCommand := FDBXConnection.CreateCommand;
    FGetNextIDExpDetalheCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIDExpDetalheCommand.Text := 'TServerMethodsGen.GetNextIDExpDetalhe';
    FGetNextIDExpDetalheCommand.Prepare;
  end;
  FGetNextIDExpDetalheCommand.ExecuteUpdate;
  Result := FGetNextIDExpDetalheCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.IEstProdAcabado(idOP: Integer; idProd: Integer; Lote: string; Qtd: Double): Boolean;
begin
  if FIEstProdAcabadoCommand = nil then
  begin
    FIEstProdAcabadoCommand := FDBXConnection.CreateCommand;
    FIEstProdAcabadoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIEstProdAcabadoCommand.Text := 'TServerMethodsGen.IEstProdAcabado';
    FIEstProdAcabadoCommand.Prepare;
  end;
  FIEstProdAcabadoCommand.Parameters[0].Value.SetInt32(idOP);
  FIEstProdAcabadoCommand.Parameters[1].Value.SetInt32(idProd);
  FIEstProdAcabadoCommand.Parameters[2].Value.SetWideString(Lote);
  FIEstProdAcabadoCommand.Parameters[3].Value.SetDouble(Qtd);
  FIEstProdAcabadoCommand.ExecuteUpdate;
  Result := FIEstProdAcabadoCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethodsGenClient.IEstExp(idOp: Integer; idProd: Integer; Qtd: Double): Boolean;
begin
  if FIEstExpCommand = nil then
  begin
    FIEstExpCommand := FDBXConnection.CreateCommand;
    FIEstExpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIEstExpCommand.Text := 'TServerMethodsGen.IEstExp';
    FIEstExpCommand.Prepare;
  end;
  FIEstExpCommand.Parameters[0].Value.SetInt32(idOp);
  FIEstExpCommand.Parameters[1].Value.SetInt32(idProd);
  FIEstExpCommand.Parameters[2].Value.SetDouble(Qtd);
  FIEstExpCommand.ExecuteUpdate;
  Result := FIEstExpCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethodsGenClient.GetIdProduto(iCod: string): Integer;
begin
  if FGetIdProdutoCommand = nil then
  begin
    FGetIdProdutoCommand := FDBXConnection.CreateCommand;
    FGetIdProdutoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetIdProdutoCommand.Text := 'TServerMethodsGen.GetIdProduto';
    FGetIdProdutoCommand.Prepare;
  end;
  FGetIdProdutoCommand.Parameters[0].Value.SetWideString(iCod);
  FGetIdProdutoCommand.ExecuteUpdate;
  Result := FGetIdProdutoCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.VerificaNF(nf: string): Boolean;
begin
  if FVerificaNFCommand = nil then
  begin
    FVerificaNFCommand := FDBXConnection.CreateCommand;
    FVerificaNFCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerificaNFCommand.Text := 'TServerMethodsGen.VerificaNF';
    FVerificaNFCommand.Prepare;
  end;
  FVerificaNFCommand.Parameters[0].Value.SetWideString(nf);
  FVerificaNFCommand.ExecuteUpdate;
  Result := FVerificaNFCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsGenClient.InsertEstExp(idOP: Integer; idProd: Integer; Qtd: Double): Boolean;
begin
  if FInsertEstExpCommand = nil then
  begin
    FInsertEstExpCommand := FDBXConnection.CreateCommand;
    FInsertEstExpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsertEstExpCommand.Text := 'TServerMethodsGen.InsertEstExp';
    FInsertEstExpCommand.Prepare;
  end;
  FInsertEstExpCommand.Parameters[0].Value.SetInt32(idOP);
  FInsertEstExpCommand.Parameters[1].Value.SetInt32(idProd);
  FInsertEstExpCommand.Parameters[2].Value.SetDouble(Qtd);
  FInsertEstExpCommand.ExecuteUpdate;
  Result := FInsertEstExpCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethodsGenClient.RetornoData(Lote: string): string;
begin
  if FRetornoDataCommand = nil then
  begin
    FRetornoDataCommand := FDBXConnection.CreateCommand;
    FRetornoDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRetornoDataCommand.Text := 'TServerMethodsGen.RetornoData';
    FRetornoDataCommand.Prepare;
  end;
  FRetornoDataCommand.Parameters[0].Value.SetWideString(Lote);
  FRetornoDataCommand.ExecuteUpdate;
  Result := FRetornoDataCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsGenClient.PreencherLote(idMP: Integer; Qtd: Double): string;
begin
  if FPreencherLoteCommand = nil then
  begin
    FPreencherLoteCommand := FDBXConnection.CreateCommand;
    FPreencherLoteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPreencherLoteCommand.Text := 'TServerMethodsGen.PreencherLote';
    FPreencherLoteCommand.Prepare;
  end;
  FPreencherLoteCommand.Parameters[0].Value.SetInt32(idMP);
  FPreencherLoteCommand.Parameters[1].Value.SetDouble(Qtd);
  FPreencherLoteCommand.ExecuteUpdate;
  Result := FPreencherLoteCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethodsGenClient.NextSeqLote: Integer;
begin
  if FNextSeqLoteCommand = nil then
  begin
    FNextSeqLoteCommand := FDBXConnection.CreateCommand;
    FNextSeqLoteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNextSeqLoteCommand.Text := 'TServerMethodsGen.NextSeqLote';
    FNextSeqLoteCommand.Prepare;
  end;
  FNextSeqLoteCommand.ExecuteUpdate;
  Result := FNextSeqLoteCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.NextSeqRegis: Integer;
begin
  if FNextSeqRegisCommand = nil then
  begin
    FNextSeqRegisCommand := FDBXConnection.CreateCommand;
    FNextSeqRegisCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNextSeqRegisCommand.Text := 'TServerMethodsGen.NextSeqRegis';
    FNextSeqRegisCommand.Prepare;
  end;
  FNextSeqRegisCommand.ExecuteUpdate;
  Result := FNextSeqRegisCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.NextSeqAprov: Integer;
begin
  if FNextSeqAprovCommand = nil then
  begin
    FNextSeqAprovCommand := FDBXConnection.CreateCommand;
    FNextSeqAprovCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNextSeqAprovCommand.Text := 'TServerMethodsGen.NextSeqAprov';
    FNextSeqAprovCommand.Prepare;
  end;
  FNextSeqAprovCommand.ExecuteUpdate;
  Result := FNextSeqAprovCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.NextSeqReprov: Integer;
begin
  if FNextSeqReprovCommand = nil then
  begin
    FNextSeqReprovCommand := FDBXConnection.CreateCommand;
    FNextSeqReprovCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNextSeqReprovCommand.Text := 'TServerMethodsGen.NextSeqReprov';
    FNextSeqReprovCommand.Prepare;
  end;
  FNextSeqReprovCommand.ExecuteUpdate;
  Result := FNextSeqReprovCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.NextSeqQuarent: Integer;
begin
  if FNextSeqQuarentCommand = nil then
  begin
    FNextSeqQuarentCommand := FDBXConnection.CreateCommand;
    FNextSeqQuarentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNextSeqQuarentCommand.Text := 'TServerMethodsGen.NextSeqQuarent';
    FNextSeqQuarentCommand.Prepare;
  end;
  FNextSeqQuarentCommand.ExecuteUpdate;
  Result := FNextSeqQuarentCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextNewIdFomulaNew: Integer;
begin
  if FGetNextNewIdFomulaNewCommand = nil then
  begin
    FGetNextNewIdFomulaNewCommand := FDBXConnection.CreateCommand;
    FGetNextNewIdFomulaNewCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextNewIdFomulaNewCommand.Text := 'TServerMethodsGen.GetNextNewIdFomulaNew';
    FGetNextNewIdFomulaNewCommand.Prepare;
  end;
  FGetNextNewIdFomulaNewCommand.ExecuteUpdate;
  Result := FGetNextNewIdFomulaNewCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.exceSql(sSql: string): Boolean;
begin
  if FexceSqlCommand = nil then
  begin
    FexceSqlCommand := FDBXConnection.CreateCommand;
    FexceSqlCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FexceSqlCommand.Text := 'TServerMethodsGen.exceSql';
    FexceSqlCommand.Prepare;
  end;
  FexceSqlCommand.Parameters[0].Value.SetWideString(sSql);
  FexceSqlCommand.ExecuteUpdate;
  Result := FexceSqlCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsGenClient.IEntradaEstoqueEnvase(idInsumo: Integer; idOrdemEnvase: Integer; idControle: Integer; Qtd: Double): Integer;
begin
  if FIEntradaEstoqueEnvaseCommand = nil then
  begin
    FIEntradaEstoqueEnvaseCommand := FDBXConnection.CreateCommand;
    FIEntradaEstoqueEnvaseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIEntradaEstoqueEnvaseCommand.Text := 'TServerMethodsGen.IEntradaEstoqueEnvase';
    FIEntradaEstoqueEnvaseCommand.Prepare;
  end;
  FIEntradaEstoqueEnvaseCommand.Parameters[0].Value.SetInt32(idInsumo);
  FIEntradaEstoqueEnvaseCommand.Parameters[1].Value.SetInt32(idOrdemEnvase);
  FIEntradaEstoqueEnvaseCommand.Parameters[2].Value.SetInt32(idControle);
  FIEntradaEstoqueEnvaseCommand.Parameters[3].Value.SetDouble(Qtd);
  FIEntradaEstoqueEnvaseCommand.ExecuteUpdate;
  Result := FIEntradaEstoqueEnvaseCommand.Parameters[4].Value.GetInt32;
end;

function TServerMethodsGenClient.ISaidaEstoqueEnvase(idInsumo: Integer; idOrdemEnvase: Integer; Qtd: Double): Integer;
begin
  if FISaidaEstoqueEnvaseCommand = nil then
  begin
    FISaidaEstoqueEnvaseCommand := FDBXConnection.CreateCommand;
    FISaidaEstoqueEnvaseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FISaidaEstoqueEnvaseCommand.Text := 'TServerMethodsGen.ISaidaEstoqueEnvase';
    FISaidaEstoqueEnvaseCommand.Prepare;
  end;
  FISaidaEstoqueEnvaseCommand.Parameters[0].Value.SetInt32(idInsumo);
  FISaidaEstoqueEnvaseCommand.Parameters[1].Value.SetInt32(idOrdemEnvase);
  FISaidaEstoqueEnvaseCommand.Parameters[2].Value.SetDouble(Qtd);
  FISaidaEstoqueEnvaseCommand.ExecuteUpdate;
  Result := FISaidaEstoqueEnvaseCommand.Parameters[3].Value.GetInt32;
end;

function TServerMethodsGenClient.OPExpedicao(idprod: Integer; idop: Integer): Double;
begin
  if FOPExpedicaoCommand = nil then
  begin
    FOPExpedicaoCommand := FDBXConnection.CreateCommand;
    FOPExpedicaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOPExpedicaoCommand.Text := 'TServerMethodsGen.OPExpedicao';
    FOPExpedicaoCommand.Prepare;
  end;
  FOPExpedicaoCommand.Parameters[0].Value.SetInt32(idprod);
  FOPExpedicaoCommand.Parameters[1].Value.SetInt32(idop);
  FOPExpedicaoCommand.ExecuteUpdate;
  Result := FOPExpedicaoCommand.Parameters[2].Value.GetDouble;
end;

procedure TServerMethodsGenClient.IDeletaRegistro(sLogin: string; sForm: string);
begin
  if FIDeletaRegistroCommand = nil then
  begin
    FIDeletaRegistroCommand := FDBXConnection.CreateCommand;
    FIDeletaRegistroCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIDeletaRegistroCommand.Text := 'TServerMethodsGen.IDeletaRegistro';
    FIDeletaRegistroCommand.Prepare;
  end;
  FIDeletaRegistroCommand.Parameters[0].Value.SetWideString(sLogin);
  FIDeletaRegistroCommand.Parameters[1].Value.SetWideString(sForm);
  FIDeletaRegistroCommand.ExecuteUpdate;
end;

procedure TServerMethodsGenClient.InsertAuditoria(iid: string; sTabela: string; sCampo: string; sValorNovo: string; sValorAntigo: string; sTipoalteracao: string; sUsuario: string; sObs: string);
begin
  if FInsertAuditoriaCommand = nil then
  begin
    FInsertAuditoriaCommand := FDBXConnection.CreateCommand;
    FInsertAuditoriaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsertAuditoriaCommand.Text := 'TServerMethodsGen.InsertAuditoria';
    FInsertAuditoriaCommand.Prepare;
  end;
  FInsertAuditoriaCommand.Parameters[0].Value.SetWideString(iid);
  FInsertAuditoriaCommand.Parameters[1].Value.SetWideString(sTabela);
  FInsertAuditoriaCommand.Parameters[2].Value.SetWideString(sCampo);
  FInsertAuditoriaCommand.Parameters[3].Value.SetWideString(sValorNovo);
  FInsertAuditoriaCommand.Parameters[4].Value.SetWideString(sValorAntigo);
  FInsertAuditoriaCommand.Parameters[5].Value.SetWideString(sTipoalteracao);
  FInsertAuditoriaCommand.Parameters[6].Value.SetWideString(sUsuario);
  FInsertAuditoriaCommand.Parameters[7].Value.SetWideString(sObs);
  FInsertAuditoriaCommand.ExecuteUpdate;
end;

function TServerMethodsGenClient.DeletaPermissoes(idusuario: Integer): Integer;
begin
  if FDeletaPermissoesCommand = nil then
  begin
    FDeletaPermissoesCommand := FDBXConnection.CreateCommand;
    FDeletaPermissoesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeletaPermissoesCommand.Text := 'TServerMethodsGen.DeletaPermissoes';
    FDeletaPermissoesCommand.Prepare;
  end;
  FDeletaPermissoesCommand.Parameters[0].Value.SetInt32(idusuario);
  FDeletaPermissoesCommand.ExecuteUpdate;
  Result := FDeletaPermissoesCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.GetNextIDEstoqueExp: Integer;
begin
  if FGetNextIDEstoqueExpCommand = nil then
  begin
    FGetNextIDEstoqueExpCommand := FDBXConnection.CreateCommand;
    FGetNextIDEstoqueExpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextIDEstoqueExpCommand.Text := 'TServerMethodsGen.GetNextIDEstoqueExp';
    FGetNextIDEstoqueExpCommand.Prepare;
  end;
  FGetNextIDEstoqueExpCommand.ExecuteUpdate;
  Result := FGetNextIDEstoqueExpCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.ExistMPFormula(idForm: Integer; idMP: Integer): Boolean;
begin
  if FExistMPFormulaCommand = nil then
  begin
    FExistMPFormulaCommand := FDBXConnection.CreateCommand;
    FExistMPFormulaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExistMPFormulaCommand.Text := 'TServerMethodsGen.ExistMPFormula';
    FExistMPFormulaCommand.Prepare;
  end;
  FExistMPFormulaCommand.Parameters[0].Value.SetInt32(idForm);
  FExistMPFormulaCommand.Parameters[1].Value.SetInt32(idMP);
  FExistMPFormulaCommand.ExecuteUpdate;
  Result := FExistMPFormulaCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethodsGenClient.FormulaExist(codProd: string): Boolean;
begin
  if FFormulaExistCommand = nil then
  begin
    FFormulaExistCommand := FDBXConnection.CreateCommand;
    FFormulaExistCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFormulaExistCommand.Text := 'TServerMethodsGen.FormulaExist';
    FFormulaExistCommand.Prepare;
  end;
  FFormulaExistCommand.Parameters[0].Value.SetWideString(codProd);
  FFormulaExistCommand.ExecuteUpdate;
  Result := FFormulaExistCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsGenClient.EstInsumo(idInsumo: Integer): string;
begin
  if FEstInsumoCommand = nil then
  begin
    FEstInsumoCommand := FDBXConnection.CreateCommand;
    FEstInsumoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEstInsumoCommand.Text := 'TServerMethodsGen.EstInsumo';
    FEstInsumoCommand.Prepare;
  end;
  FEstInsumoCommand.Parameters[0].Value.SetInt32(idInsumo);
  FEstInsumoCommand.ExecuteUpdate;
  Result := FEstInsumoCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsGenClient.GetRevisao(idProduto: Integer): Integer;
begin
  if FGetRevisaoCommand = nil then
  begin
    FGetRevisaoCommand := FDBXConnection.CreateCommand;
    FGetRevisaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetRevisaoCommand.Text := 'TServerMethodsGen.GetRevisao';
    FGetRevisaoCommand.Prepare;
  end;
  FGetRevisaoCommand.Parameters[0].Value.SetInt32(idProduto);
  FGetRevisaoCommand.ExecuteUpdate;
  Result := FGetRevisaoCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethodsGenClient.NextControleOp: Integer;
begin
  if FNextControleOpCommand = nil then
  begin
    FNextControleOpCommand := FDBXConnection.CreateCommand;
    FNextControleOpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNextControleOpCommand.Text := 'TServerMethodsGen.NextControleOp';
    FNextControleOpCommand.Prepare;
  end;
  FNextControleOpCommand.ExecuteUpdate;
  Result := FNextControleOpCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethodsGenClient.SumControleOp(idOp: Integer): Double;
begin
  if FSumControleOpCommand = nil then
  begin
    FSumControleOpCommand := FDBXConnection.CreateCommand;
    FSumControleOpCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSumControleOpCommand.Text := 'TServerMethodsGen.SumControleOp';
    FSumControleOpCommand.Prepare;
  end;
  FSumControleOpCommand.Parameters[0].Value.SetInt32(idOp);
  FSumControleOpCommand.ExecuteUpdate;
  Result := FSumControleOpCommand.Parameters[1].Value.GetDouble;
end;

function TServerMethodsGenClient.DeletaOrdemDetalhe(idOrdem: string): Boolean;
begin
  if FDeletaOrdemDetalheCommand = nil then
  begin
    FDeletaOrdemDetalheCommand := FDBXConnection.CreateCommand;
    FDeletaOrdemDetalheCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeletaOrdemDetalheCommand.Text := 'TServerMethodsGen.DeletaOrdemDetalhe';
    FDeletaOrdemDetalheCommand.Prepare;
  end;
  FDeletaOrdemDetalheCommand.Parameters[0].Value.SetWideString(idOrdem);
  FDeletaOrdemDetalheCommand.ExecuteUpdate;
  Result := FDeletaOrdemDetalheCommand.Parameters[1].Value.GetBoolean;
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
  FDSServerModuleCreateCommand.DisposeOf;
  FVerificaUsuarioCommand.DisposeOf;
  FUpdateSenhaUsuarioCommand.DisposeOf;
  FGetNextIdNfeEntradaCommand.DisposeOf;
  FGetNextIdOPQuimicoCommand.DisposeOf;
  FGetNextIdFormulaCommand.DisposeOf;
  FGetNextIdOrdemEnvaseCommand.DisposeOf;
  FDeletaNFeEntradaCommand.DisposeOf;
  FDeletaEstoqueInsumosCommand.DisposeOf;
  FDeletaNFeItensCommand.DisposeOf;
  FGetNextIdProducaoEnvaseCommand.DisposeOf;
  FDeletaOrdemEnvaseCommand.DisposeOf;
  FDeletaEnvaseDetalheCommand.DisposeOf;
  FIBaixaEstoqueCommand.DisposeOf;
  FIBaixaEstoqueQuimicoCommand.DisposeOf;
  FDeletaOPQuimicoCommand.DisposeOf;
  FDeletaOPQuimicoDetalheCommand.DisposeOf;
  FIEstoqueQuimicoCommand.DisposeOf;
  FIProdutoOPQuimicoCommand.DisposeOf;
  FIBaixaEstoqueOPCommand.DisposeOf;
  FGetNextIdSequencialCommand.DisposeOf;
  FDeleteIdSequencialCommand.DisposeOf;
  FZerarSequencialCommand.DisposeOf;
  FGetNextFichaSequencialCommand.DisposeOf;
  FAvisoEstoqueOrdemProducaoCommand.DisposeOf;
  FGetNextIdUserCommand.DisposeOf;
  FGetCodProdutoCommand.DisposeOf;
  FGetNextIdPedidoCommand.DisposeOf;
  FGetCodInsumoCommand.DisposeOf;
  FGetTeveAumentoCommand.DisposeOf;
  FVlrSequencialCommand.DisposeOf;
  FGetNextIdEstoqueQuimCommand.DisposeOf;
  FIEstoqueProdutoAcabadoCommand.DisposeOf;
  FIPermissaoCommand.DisposeOf;
  FGetPermissaoCommand.DisposeOf;
  FGetIdUserCommand.DisposeOf;
  FGetIDUsuarioCommand.DisposeOf;
  FIdInsumoCommand.DisposeOf;
  FGetNextIdCICommand.DisposeOf;
  FGetNextIdFormCommand.DisposeOf;
  FGetNextCDSCICommand.DisposeOf;
  FGetNomeCommand.DisposeOf;
  FGetNextIdMPEspCommand.DisposeOf;
  FGetNextIdEMBEspCommand.DisposeOf;
  FControlEspMPCommand.DisposeOf;
  FControlEspEMBCommand.DisposeOf;
  FUsoCICommand.DisposeOf;
  FGetNextIDExpCommand.DisposeOf;
  FGetNextIDExpDetalheCommand.DisposeOf;
  FIEstProdAcabadoCommand.DisposeOf;
  FIEstExpCommand.DisposeOf;
  FGetIdProdutoCommand.DisposeOf;
  FVerificaNFCommand.DisposeOf;
  FInsertEstExpCommand.DisposeOf;
  FRetornoDataCommand.DisposeOf;
  FPreencherLoteCommand.DisposeOf;
  FNextSeqLoteCommand.DisposeOf;
  FNextSeqRegisCommand.DisposeOf;
  FNextSeqAprovCommand.DisposeOf;
  FNextSeqReprovCommand.DisposeOf;
  FNextSeqQuarentCommand.DisposeOf;
  FGetNextNewIdFomulaNewCommand.DisposeOf;
  FexceSqlCommand.DisposeOf;
  FIEntradaEstoqueEnvaseCommand.DisposeOf;
  FISaidaEstoqueEnvaseCommand.DisposeOf;
  FOPExpedicaoCommand.DisposeOf;
  FIDeletaRegistroCommand.DisposeOf;
  FInsertAuditoriaCommand.DisposeOf;
  FDeletaPermissoesCommand.DisposeOf;
  FGetNextIDEstoqueExpCommand.DisposeOf;
  FExistMPFormulaCommand.DisposeOf;
  FFormulaExistCommand.DisposeOf;
  FEstInsumoCommand.DisposeOf;
  FGetRevisaoCommand.DisposeOf;
  FNextControleOpCommand.DisposeOf;
  FSumControleOpCommand.DisposeOf;
  FDeletaOrdemDetalheCommand.DisposeOf;
  inherited;
end;

end.


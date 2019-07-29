{$I ACBr.inc}
unit CEC.DFe;

interface

  Uses
  IniFiles, ShellAPI, pcnRetConsReciNFe, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,   Dialogs, StdCtrls, ExtCtrls, Buttons,
  ComCtrls, OleCtrls, SHDocVw, ACBrNFe, pcnConversao, ACBrUtil, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrBase, ACBrDFe, XMLIntf, XMLDoc, zlib,
  ACBrMail, ACBrNFeDANFeRLClass, ACBrDANFCeFortesFr;

  FUNCTION Gerar_NFe (NumNFe : String):Boolean;

  PROCEDURE LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
  PROCEDURE LoadConsulta201(XML: AnsiString);

  PROCEDURE CarregaDadosAcbr;


implementation

uses
   strutils, math, TypInfo, DateUtils, synacode, pcnNFe, pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT, FileCtrl;


procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin

  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');

end;

procedure LoadConsulta201(XML: AnsiString);
var
  DOM: IXMLDocument;
  lXML: AnsiString;

  procedure AddNodes(XMLNode: IXMLNode; TreeNode: TTreeNode);
  var
    Index: Integer;
    NewNode: TTreeNode;
    Value: string;
  begin
    if XMLNode.nodeType in [ntTEXT, ntCDATA, ntCOMMENT] then
      Value := XMLNode.text
    else
      Value := XMLNode.nodeName;
    //NewNode := TreeViewRetornoConsulta.Items.AddChild(TreeNode, {XMLNode.NodeName +} ' ' + Value);
    //for Index := 0 to XMLNode.childNodes.Count - 1 do
    //  AddNodes(XMLNode.childNodes[Index], NewNode);
  end;

  function ReplaceStr( Fonte, De, Para:AnsiString ):AnsiString;
  begin
    result:=fonte;
    while pos(de,result) <> 0 do
      result:=copy(result, 1, pos(de,result)-1 )+Para+copy(result,pos(de,result)+length(de),length(result) );
  end;

  function LimpaXML(XML: AnsiString; TagRemover:AnsiString): AnsiString;
  begin
    Result := XML;
    while pos('<'+TagRemover,Result) <> 0 do
    begin
      Result := ReplaceStr(Result,
                           '<'+TagRemover+
                              RetornarConteudoEntre(Result,'<'+TagRemover,'</'+TagRemover+'>')+
                           '</'+TagRemover+'>','');
    end;
  end;
begin
  DOM := TXMLDocument.Create(nil);
  try
    lXML := LimpaXML(UTF8Decode(XML),'Signature');
    DOM.LoadFromXML(lXML);
    DOM.Active := True;
    //TreeViewRetornoConsulta.Items.BeginUpdate;
   // TreeViewRetornoConsulta.Items.Clear;
    AddNodes(dom.DocumentElement, nil);
    //TreeViewRetornoConsulta.TopItem := TreeViewRetornoConsulta.Items[0];
  finally
   // TreeViewRetornoConsulta.Items.EndUpdate;
  end;
end;



FUNCTION Gerar_NFe (NumNFe : String):Boolean;
VAR

  Impressao : TstringList;


  I, iCRT,anumiten:LongInt;
  ValorTotalProdutoIBPT, PercentualIBPT:Currency;
  UFEmitente, UFDestinario : string;


  //DIFAL
  ValorIcmsDestinatario, ValorIcmsEmitente, DiferencaUF : Currency;

  //Geral


  Valor_vBC, Valor_vBCST, Valor_vST,ValorTotalNFe, Valor_VICMS:Currency;

  S_FCPUFDest, S_ICMSUFDest, S_ICMSUFRemet  :Currency;

  Portaria:LongInt;
  Descricao_Portaria : String;



label FIM;
begin

   Result:=False;

   CarregaDadosAcbr;

   Impressao := TStringList.Create;

   PercentualIBPT:=0;
   ValorTotalProdutoIBPT:=0;
   Valor_vBC:=0;
   Valor_vBCST:=0;
   Valor_vST:=0;
   ValorTotalNFe:=0;
   Valor_VICMS:=0;

   S_FCPUFDest:=0;
   S_ICMSUFDest:=0;
   S_ICMSUFRemet:=0;

   Portaria:=0;
   Descricao_Portaria:='';


   (*******************************************************CONSULTAS**************************************************************************************
                                              Realizo todas as consultas necessarias para alimentar o acbr
   ****************************CONSULTAS******************************************************************************************************************)
   Pesquisa.Empresa.Open      (' SELECT * FROM EMPRESA NATURAL JOIN CEP'                                                                         );
   Pesquisa.NFe.Open          (' SELECT * FROM NFE WHERE COD_NFE         = ' + NumNFe                                                            );
   Pesquisa.Itens_nfe.Open    (' SELECT * FROM ITENS_NFE WHERE COD_NFE   = ' + NumNFe                                                            );
   Pesquisa.CFOP.Open         (' SELECT * FROM CFOP WHERE COD_CFOP       = ' + Pesquisa.NFe.FieldByName('COD_CFOP').AsString                     );
   Pesquisa.Cliente.Open      (' SELECT * FROM CLIENTE NATURAL JOIN CEP WHERE COD_CLIENTE = ' + Pesquisa.NFe.FieldByName('COD_CLIENTE').AsString );



   with  BD.NFE.NotasFiscais.Add.NFe do begin


   (************************************************************************************************************************************************************
                                                  DADOS DO CONFIGURAÇÃO PARA EMISSAO DA NOTA FISCAL
   ************************************************************************************************************************************************************)


     Ide.cNF       := StrToInt(NumNFe); //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := Pesquisa.CFOP.FieldByName('CFOP_IMPRESSAO').Value;

     if Pesquisa.NFe.FieldByName('NFE_INDPAG').Value = 0 then
       Ide.indPag    := ipVista;

     if Pesquisa.NFe.FieldByName('NFE_INDPAG').Value = 1 then
       Ide.indPag    := ipPrazo;

     if Pesquisa.NFe.FieldByName('NFE_INDPAG').Value = 2 then
      Ide.indPag    := ipOutras;


     Ide.modelo    :=  Pesquisa.Configuracao.FieldByName('CCF_MODELO').AsInteger;
     Ide.serie     :=  Pesquisa.Configuracao.FieldByName('CCF_SERIE').AsInteger;

     Ide.nNF       := StrToInt(NumNFe);

     Ide.dEmi      := Pesquisa.NFe.FieldByName('NFE_DATA_HORA_EMISSAO').AsDateTime;
     Ide.dSaiEnt   := Pesquisa.NFe.FieldByName('NFE_DATA_HORA_SAIDA').AsDateTime;
     Ide.hSaiEnt   := Now;


     if Pesquisa.NFe.FieldByName('NFE_TIPO_OPERACAO').Value = 'ENTRADA' then
       Ide.tpNF      := tnEntrada
     else
       Ide.tpNF      := tnSaida;

     if Pesquisa.Configuracao.FieldByName('CCF_NFE_FORMA_EMISSAO').Value = 1 then
       Ide.tpEmis    := teNormal;

     if Pesquisa.Configuracao.FieldByName('CCF_NFE_FORMA_EMISSAO').Value = 2 then
       Ide.tpEmis    := teContingencia;


     if Pesquisa.Configuracao.FieldByName('CCF_WEB_AMBIENTE').AsInteger = 1 Then
       Ide.tpAmb     := taProducao
     else
       Ide.tpAmb     := taHomologacao;

     if Pesquisa.NFe.FieldByName('COD_TIPO_ATENDIMENTO').Value = 0 then
       Ide.indPres:=pcNao;

     if Pesquisa.NFe.FieldByName('COD_TIPO_ATENDIMENTO').Value  = 1 then
       Ide.indPres:=pcPresencial;

     if Pesquisa.NFe.FieldByName('COD_TIPO_ATENDIMENTO').Value  = 2 then
       Ide.indPres:=pcInternet;

     if Pesquisa.NFe.FieldByName('COD_TIPO_ATENDIMENTO').Value  = 3 then
       Ide.indPres:=pcTeleatendimento;

     if Pesquisa.NFe.FieldByName('COD_TIPO_ATENDIMENTO').Value  = 4 then


     If Pesquisa.Cliente.FieldByName('COD_TIPO_OPERACAO').Value = 1 then
       Ide.idDest:=doInterna;

     If Pesquisa.Cliente.FieldByName('COD_TIPO_OPERACAO').Value = 2 then
       Ide.idDest:= doInterestadual;

     If Pesquisa.Cliente.FieldByName('COD_TIPO_OPERACAO').Value = 3 then
       Ide.idDest:= doExterior;


     if Pesquisa.NFe.FieldByName('COD_FINALIZDADE_NFE').Value  = 1 then
       Ide.finNFe    := fnNormal;

     if Pesquisa.NFe.FieldByName('COD_FINALIZDADE_NFE').Value  = 2 then
       Ide.finNFe    := fnComplementar;

     if Pesquisa.NFe.FieldByName('COD_FINALIZDADE_NFE').Value  = 3 then
       Ide.finNFe    := fnAjuste;

     if Pesquisa.NFe.FieldByName('COD_FINALIZDADE_NFE').Value  = 4 then begin

       Ide.finNFe    := fnDevolucao;

       Pesquisa.Referencia.Open('Select * from nfe_referenciada where cod_nfe ='+NumNFe);
       Pesquisa.Referencia.First;

       REPEAT

         if Pesquisa.Referencia.FieldByName('NFR_TIPO').AsString = 'NF-e' then begin

           //nfe
           Ide.NFref.Add.refNFe        := Pesquisa.Referencia.FieldByName('NFR_CHAVE_ACESSO').AsString;

         end;


          if Pesquisa.Referencia.FieldByName('NFR_TIPO').AsString = 'CT-e' then begin

           //cte
           Ide.NFref.Add.refCTe        := Pesquisa.Referencia.FieldByName('NFR_CHAVE_ACESSO').AsString;
         end;

         if Pesquisa.Referencia.FieldByName('NFR_TIPO').AsString = 'Nota Fiscal' then begin

          //Nota Fiscal
           Ide.NFref.Add.RefNF.cUF     :=  UFparaCodigo(Pesquisa.Referencia.FieldByName('NFR_UF').AsString);
           Ide.NFref.Add.RefNF.AAMM    :=  RemoveAcentoseCaracteres(Pesquisa.Referencia.FieldByName('NFR_MES_ANO').AsString);
           Ide.NFref.Add.RefNF.CNPJ    :=  RemoveAcentoseCaracteres(Pesquisa.Referencia.FieldByName('NFR_CNPJ').AsString);
           Ide.NFref.Add.RefNF.modelo  :=  Pesquisa.Referencia.FieldByName('NFR_MODELO').AsInteger;
           Ide.NFref.Add.RefNF.serie   :=  Pesquisa.Referencia.FieldByName('NFR_SERIE').AsInteger;
           Ide.NFref.Add.RefNF.nNF     :=  Pesquisa.Referencia.FieldByName('NFR_NUMERO').AsInteger;

         end;

         Pesquisa.Referencia.Next;
       UNTIL (Pesquisa.Referencia.Eof) ;

     end;

     if  Assigned( BD.NFe.DANFE ) then
        Ide.tpImp     := BD.NFe.DANFE.TipoDANFE;

     Ide.verProc   := Versao_EmissorNFe; //Versão do seu sistema



//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';



   (************************************************************************************************************************************************************
                                                            DADOS DO EMITENTE DA NOTA FISCAL
   ************************************************************************************************************************************************************)

      Ide.cUF                := Pesquisa.Empresa.FieldByName('CEP_COD_UF').AsInteger;
      Ide.cMunFG             := Pesquisa.Empresa.FieldByName('CEP_IBGE').AsInteger;


      Emit.CNPJCPF           :=  Pesquisa.Empresa.FieldByName('EMP_CNPJ').AsString;
      Emit.IE                :=  Pesquisa.Empresa.FieldByName('EMP_INSC_ESTADUAL').AsString;
      Emit.xNome             :=  Pesquisa.Empresa.FieldByName('EMP_RAZAO_SOCIAL').AsString;

      if Length(Pesquisa.Empresa.FieldByName('EMP_FANTASIA').AsString)<=0 then
        Emit.xFant           :=  Pesquisa.Empresa.FieldByName('EMP_RAZAO_SOCIAL').AsString
      else
        Emit.xFant           :=  Pesquisa.Empresa.FieldByName('EMP_FANTASIA').AsString;

      Emit.EnderEmit.fone    := Pesquisa.Empresa.FieldByName('EMP_TELEFONE').AsString;
      Emit.EnderEmit.CEP     := StrToInt(RemoveAcentoseCaracteres(Pesquisa.Empresa.FieldByName('EMP_CEP').AsString));
      Emit.EnderEmit.xLgr    := Pesquisa.Empresa.FieldByName('CEP_LOGRADOURO').AsString;
      Emit.EnderEmit.nro     := Pesquisa.Empresa.FieldByName('EMP_NUMERO').AsString;
      Emit.EnderEmit.xCpl    := Pesquisa.Empresa.FieldByName('EMP_COMPLEMENTO').AsString;
      Emit.EnderEmit.xBairro := Pesquisa.Empresa.FieldByName('CEP_BAIRRO').AsString;
      Emit.EnderEmit.cMun    := Pesquisa.Empresa.FieldByName('CEP_IBGE').AsInteger;
      Emit.EnderEmit.xMun    := Pesquisa.Empresa.FieldByName('CEP_CIDADE').AsString;
      Emit.EnderEmit.UF      := Pesquisa.Empresa.FieldByName('CEP_UF').AsString;
      Emit.enderEmit.cPais   := Pesquisa.Empresa.FieldByName('CEP_COD_PAIS').AsInteger;
      Emit.enderEmit.xPais   := Pesquisa.Empresa.FieldByName('CEP_PAIS').AsString;

      //1-crtSimplesNacional
      if Pesquisa.Empresa.FieldByName('COD_CRT').AsInteger = 1 then  //4 -
        Emit.CRT:= crtSimplesNacional;

      //2-crtSimplesExcessoReceita
      if Pesquisa.Empresa.FieldByName('COD_CRT').AsInteger = 2 then   //4 - COD_TRIBUTACAO
        Emit.CRT:= crtSimplesExcessoReceita;

      //3-crtRegimeNormal
      if Pesquisa.Empresa.FieldByName('COD_CRT').AsInteger = 3 then  //4 - COD_TRIBUTACAO
         Emit.CRT:= crtRegimeNormal;


      Emit.IEST              := '';
    //Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
    //Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido a inclusão de serviços na NFe


     UFEmitente:=Pesquisa.Empresa.FieldByName('CEP_UF').AsString;

   (************************************************************************************************************************************************************
                                                            DADOS DO CLIENTE DA NOTA FISCAL
   ************************************************************************************************************************************************************)

     If Pesquisa.Cliente.FieldByName('CLI_COMSUMIDOR_FINAL').AsString = 'S' then
       Ide.indFinal:= cfConsumidorFinal
     else
       Ide.indFinal:= cfNao;

     if Pesquisa.Cliente.FieldByName('COD_TIPO_CONTRIBUINTE').AsInteger =  1 then
        Dest.indIEDest := inContribuinte;

     if Pesquisa.Cliente.FieldByName('COD_TIPO_CONTRIBUINTE').AsInteger =  2 then
        Dest.indIEDest := inIsento;

     if Pesquisa.Cliente.FieldByName('COD_TIPO_CONTRIBUINTE').AsInteger = 3 then
        Dest.indIEDest := inNaoContribuinte;

      if Pesquisa.Cliente.FieldByName('CLI_TIPO').AsString ='JURIDICA' then begin
        Dest.IE             := Pesquisa.Cliente.FieldByName('CLI_RG_IE').AsString;
        Dest.CNPJCPF           := Pesquisa.Cliente.FieldByName('CLI_CPF_CNPJ').AsString;
      end else begin

         if Pesquisa.Cliente.FieldByName('CLI_ESTRANGEIRO').AsString = 'NAO' then begin
           Dest.IE                :='';
           Dest.CNPJCPF           := Pesquisa.Cliente.FieldByName('CLI_CPF_CNPJ').AsString;
         end else begin

           Dest.CNPJCPF           := '';
           Dest.IE                := '';
           Dest.idEstrangeiro := Pesquisa.Cliente.FieldByName('CLI_DOC_ESTRANGEIRO').AsString


             {
              Conforme o Manual da Nota Eletrônica você deve preencher da seguinte forma:

              idEstrangeiro - Informar o número do documento (passaporte ou equivalente)

              CNPJ - deixar sem conteúdo
              IE - deixar sem conteúdo
              cMun - informar 9999999
              xMun - informar EXTERIOR
              UF - informar EX
              cPais - informar o código do país - ver tabela do BACEN
              }


         end;
      end;


      Dest.ISUF              := '';
      Dest.xNome             := Pesquisa.Cliente.FieldByName('CLI_RAZAO_SOCIAL').AsString;;

      Dest.EnderDest.Fone    := Pesquisa.Cliente.FieldByName('CLI_TELEFONE').AsString;
      Dest.EnderDest.CEP     := StrToInt(RemoveAcentoseCaracteres(Pesquisa.Cliente.FieldByName('CLI_CEP').AsString));
      Dest.EnderDest.xLgr    := Pesquisa.Cliente.FieldByName('CEP_LOGRADOURO').AsString;
      Dest.EnderDest.nro     := Pesquisa.Cliente.FieldByName('CLI_NUMERO').AsString;
      Dest.EnderDest.xCpl    := Pesquisa.Cliente.FieldByName('CLI_COMPLEMENTO').AsString;
      Dest.EnderDest.xBairro := Pesquisa.Cliente.FieldByName('CEP_BAIRRO').AsString;


      if Pesquisa.Cliente.FieldByName('CLI_ESTRANGEIRO').AsString = 'SIM' then begin

         Dest.EnderDest.cMun    :=  9999999;
         Dest.EnderDest.xMun    := 'EXTERIOR';
         Dest.EnderDest.UF      := 'EX';
         Dest.EnderDest.cPais   := Pesquisa.Cliente.FieldByName('CEP_COD_PAIS').AsInteger;
         Dest.EnderDest.xPais   := Pesquisa.Cliente.FieldByName('CEP_PAIS').AsString;

         UFDestinario           := Pesquisa.Cliente.FieldByName('CEP_UF').AsString;

      end else begin

         Dest.EnderDest.cMun    := Pesquisa.Cliente.FieldByName('CEP_IBGE').AsInteger;
         Dest.EnderDest.xMun    := Pesquisa.Cliente.FieldByName('CEP_CIDADE').AsString;
         Dest.EnderDest.UF      := Pesquisa.Cliente.FieldByName('CEP_UF').AsString;
         Dest.EnderDest.cPais   := Pesquisa.Cliente.FieldByName('CEP_COD_PAIS').AsInteger;
         Dest.EnderDest.xPais   := Pesquisa.Cliente.FieldByName('CEP_PAIS').AsString;
         UFDestinario           := Pesquisa.Cliente.FieldByName('CEP_UF').AsString;

      end;

      Dest.email                := Pesquisa.Cliente.FieldByName('CLI_EMAIL_NFE').AsString;


   (************************************************************************************************************************************************************
                                                            DADOS DOS ITENS DA NOTA FISCAL
   ************************************************************************************************************************************************************)

      anumiten:=1;

      Pesquisa.Itens_nfe.Close;
      Pesquisa.Itens_nfe.SQL.Clear;
      Pesquisa.Itens_nfe.SQL.Add('select * from ITENS_NFE where COD_NFE ='+NumNFe);
      Pesquisa.Itens_nfe.Open;
      Pesquisa.Itens_nfe.First;

      while not Pesquisa.Itens_nfe.eof do begin

        with Det.add do
        begin

          Pesquisa.Produto.Open('select * from produto where cod_produto ='+Pesquisa.Itens_nfe.FieldByName('COD_PRODUTO').AsString);
          Pesquisa.NCM.Open('select * from ncm where cod_ncm ='+Pesquisa.Produto.FieldByName('Cod_ncm').AsString);

          Prod.nItem   := anumiten;
          Prod.cProd   := Pesquisa.Itens_nfe.fieldbyname('COD_PRODUTO').asstring;

          Prod.cEAN     := pesquisa.Produto.FieldByName('PROD_COD_BARRA').AsString;
          Prod.cEANTrib := pesquisa.Produto.FieldByName('PROD_COD_BARRA').AsString;

          //verifico se na tabela de ncm o cest esta preencido se não pego o do produto

          if Length(pesquisa.Produto.FieldByName('PROD_CEST').AsString)> 0  then
            prod.CEST     := pesquisa.Produto.FieldByName('PROD_CEST').AsString
          else
           prod.CEST :='';
         // else
           // prod.CEST     := Pesquisa.NCM.FieldByName('NCM_CEST').AsString;


          prod.NCM     := Pesquisa.NCM.FieldByName('NCM_CODIGO').AsString;


          Prod.xProd   := Pesquisa.Produto.fieldbyname('PROD_DESCRICAO').asstring;

          Prod.qCom    := Pesquisa.Itens_nfe.fieldbyname('INFE_QTDE').asfloat;
          Prod.qTrib   := Pesquisa.Itens_nfe.fieldbyname('INFE_QTDE').asfloat;

          Prod.vUnCom  := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_UNITARIO').asfloat;
          Prod.vProd   := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_UNITARIO').asfloat * Pesquisa.Itens_nfe.fieldbyname('INFE_QTDE').asfloat;
          Prod.vUnTrib := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_UNITARIO').asfloat;

          (*Verificar forma de rateio*)
          Prod.vOutro  :=  0; //((Pesquisa.NFe.FieldByName('NFE_IMP_VOUTRO').AsFloat * Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat) / Pesquisa.NFe.FieldByName('NFE_IMP_VOUTRO').AsFloat);
          Prod.vFrete  :=  0; //((Pesquisa.NFe.FieldByName('NFE_IMP_VFRETE').AsFloat * Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat) / Pesquisa.NFe.FieldByName('NFE_IMP_VOUTRO').AsFloat);
          Prod.vSeg    :=  0; //((Pesquisa.NFe.FieldByName('NFE_IMP_VSEG').AsFloat * Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat) / Pesquisa.NFe.FieldByName('NFE_IMP_VOUTRO').AsFloat);
          Prod.vDesc   :=  Pesquisa.NFe.FieldByName('NFE_IMP_VDESC').AsFloat ; //((Pesquisa.NFe.FieldByName('NFE_IMP_VDESC').AsFloat * Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat) / Pesquisa.NFe.FieldByName('NFE_IMP_VOUTRO').AsFloat);

          Pesquisa.Unidade.Open('select UNI_SIGLA from unidade where cod_unidade ='+pesquisa.Produto.FieldByName('COD_UNIDADE').AsString);
          Prod.uCom    := Pesquisa.Unidade.fieldbyname('UNI_SIGLA').asstring;
          Prod.uTrib   := Pesquisa.Unidade.fieldbyname('UNI_SIGLA').asstring;


          pesquisa.Integracao.Open('select * from integracao where cod_integracao ='+pesquisa.Itens_nfe.FieldByName('cod_integracao').AsString);
          Prod.CFOP    :=  pesquisa.Integracao.fieldbyname('COD_CFOP').asstring;

          infAdProd := ''; // complemento do nome do item
          //Prod.EXTIPI := '';

          Prod.IndTot := TpcnIndicadorTotal(0);

          with Imposto do
          begin
            ICMS.orig := oeNacional;
            iCRT := Pesquisa.Empresa.FieldByName('COD_CRT').AsInteger;

            //USANDO O IBPTTAX = JA RETORNA CALCULO  SO QUE DEPENDE DE INTERNET

            //IBPT
            if pesquisa.Produto.FieldByName('COD_ORIGEM').AsInteger in [0,3,4,5] then
              PercentualIBPT:= Arredonda ((Pesquisa.NCM.FieldByName('NCM_ALIQNAC').AsFloat +  Pesquisa.NCM.FieldByName('NCM_ALIQESTADUAL').AsFloat +  Pesquisa.NCM.FieldByName('NCM_ALIQMUNICIPAL').AsFloat),2)
            else
              PercentualIBPT := Arredonda(Pesquisa.NCM.FieldByName('NCM_ALIQIMP').AsFloat +  Pesquisa.NCM.FieldByName('NCM_ALIQESTADUAL').AsFloat +  Pesquisa.NCM.FieldByName('NCM_ALIQMUNICIPAL').AsFloat,2);

            vTotTrib:=Arredonda((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat* PercentualIBPT /100),2);

            ValorTotalProdutoIBPT:= Arredonda((ValorTotalProdutoIBPT + vTotTrib),2);

            (*  retorno query integração

                Pesquisa.Integracao.FieldByName('INT_ICMS').AsString;
                Pesquisa.Integracao.FieldByName('INT_TIPO_ICMS').AsString;
                Pesquisa.Integracao.FieldByName('COD_PORTARIA').AsString;
                Pesquisa.Integracao.FieldByName('COD_CFOP').AsString;
                Pesquisa.Integracao.FieldByName('COD_TIPO').AsString;
                Pesquisa.Integracao.FieldByName('INT_SEQUENCIA').AsString;
                Pesquisa.Integracao.FieldByName('INT_OPERACAO').AsString;
                Pesquisa.Integracao.FieldByName('INT_DESCRICAO').AsString;
                Pesquisa.Integracao.FieldByName('INT_FINANCEIRO').AsString;
                Pesquisa.Integracao.FieldByName('INT_ESTOQUE').AsString;
                Pesquisa.Integracao.FieldByName('INT_NCONTRIBUIENTE').AsString;
                Pesquisa.Integracao.FieldByName('INT_ICMS_IPI').AsString;
                Pesquisa.Integracao.FieldByName('INT_ICMS_ST').AsString;
                Pesquisa.Integracao.FieldByName('INT_ICMS_RED').AsString;
                Pesquisa.Integracao.FieldByName('INT_ICMS_REDST').AsString;
                Pesquisa.Integracao.FieldByName('INT_IPI').AsString;
                Pesquisa.Integracao.FieldByName('INT_TIPO_IPIE').AsString;
                Pesquisa.Integracao.FieldByName('INT_TIPO_IPIS').AsString;
                Pesquisa.Integracao.FieldByName('INT_PIS').AsString;
                Pesquisa.Integracao.FieldByName('INT_TIPO_PIS').AsString;
                Pesquisa.Integracao.FieldByName('INT_COFINS').AsString;
                Pesquisa.Integracao.FieldByName('INT_TIPO_COFINS').AsString;
                Pesquisa.Integracao.FieldByName('INT_CSLL').AsString;
                Pesquisa.Integracao.FieldByName('INT_OBS_INTEGRACAO').AsString;
            *)


             //ValorTotalProdutoIBPT:= ValorTotalProdutoIBPT + vTotTrib;

              case (iCRT)of

                1,2:begin // Linhas para o simples nacional

                      if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring   = '101' then
                        ICMS.CSOSN := csosn101;
                      if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring   = '102' then
                        ICMS.CSOSN := csosn102;
                      if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring   = '103' then
                        ICMS.CSOSN := csosn103;
                      if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring   = '300' then
                        ICMS.CSOSN := csosn300;
                      if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring   = '400' then
                        ICMS.CSOSN := csosn400;
                      if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring   = '201' then
                        ICMS.CSOSN := csosn201;
                      if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring   = '202' then
                        ICMS.CSOSN := csosn202;
                        if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '203' then
                        ICMS.CSOSN := csosn203;
                      if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring   = '500' then
                        ICMS.CSOSN := csosn500;
                      if Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring   = '900' then
                        ICMS.CSOSN := csosn900;

                      case ICMS.CSOSN of

                        csosn101:
                        begin

                          (*
                             101 - Tributada pelo Simples Nacional com permissão de crédito - Classificam-se neste código as operações que permitem a indicação
                                 da alíquota do ICMS devido no Simples Nacional e o valor do crédito correspondente.
                          *)

                          if pesquisa.Produto.fieldbyname('PROD_ICMS').AsFloat > 0 then begin
                            ICMS.pCredSN     := pesquisa.Produto.fieldbyname('PROD_ICMS').AsFloat;
                            ICMS.vCredICMSSN := (((pesquisa.Produto.fieldbyname('PROD_ICMS').AsFloat * Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat)/100));
                          end;


                        end;

                        csosn102:
                        begin

                          (*
                              102 - Tributada pelo Simples Nacional sem permissão de crédito - Classificam-se neste código as operações que não permitem a
                                    indicação da alíquota do ICMS devido pelo Simples Nacional e do valor do crédito, e não estejam abrangidas nas hipóteses
                                    dos códigos 103, 203, 300, 400, 500 e 900.
                          *)

                        end;


                        csosn103:
                        begin

                          (*
                              103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta - Classificam-se neste código as operações praticadas por
                              optantes pelo Simples Nacional contemplados com isenção concedida para faixa de receita bruta nos termos da
                               Lei Complementar nº 123, de 2006.
                          *)


                        end;



                        csosn201:
                        begin

                           (*

                              201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária -
                                    Classificam-se neste código as operações que permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e
                                    do valor do crédito, e com cobrança do ICMS por substituição tributária.


                              Base de cálculo ICMS próprio.: 100,00
                              MVA Ajustado.................: 50%
                              Alíquota ICMS................: 17%
                              Valor ICMS Simples...........: 0

                              base de calculo da subst. tributaria

                              Base de cálculo da ST

                              Base de cálculo ST = (Base de cálculo) * ([100 + MVA Ajustado]/100)
                              Base de cálculo ST = (100)* ([100 + 50]/100)
                              Base de cálculo ST = 100 * 1,5
                              Base de cálculo ST = 150,00


                              Base de ICMS para fins de cálculo da ST

                              Valor ICMS Pŕoprio para ST = 100 * 17%
                              Valor ICMS Próprio para ST = 17,00



                              Valor ICMS ST

                              Valor ICMS ST = (Base de calculo ST * Alíquota ICMS) - Valor ICMS Próprio
                              Valor ICMS ST = (150,00 * 17%) - 17
                              Valor ICMS ST = 25,50 - 17
                              Valor ICMS ST = 8,50


                           *)

                          ICMS.modBCST     := dbisMargemValorAgregado;
                         // ICMS.pMVAST      := Pesquisa.Produto.fieldbyname('PRO_MVA').Value;
                         // ICMS.pRedBCST    := 00.00;
                          ICMS.vBCST       := Arredonda((Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat + Pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat ) * ((100 + Pesquisa.Produto.fieldbyname('PRO_MVA').AsFloat)/100),2);
                         // ICMS.vICMS       := (Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat  *  pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat);

                          //original
                          //ICMS.pICMSST     :=  pesquisa.Produto.FieldByName('PROD_ICMS_ST').AsFloat;

                          //substituir por
                          Pesquisa.ICMS.Close;
                          Pesquisa.ICMS.SQL.Clear;
                          Pesquisa.ICMS.Sql.Add('select *  from ICMS WHERE  ICMS_UF =:DESTINO');
                          Pesquisa.ICMS.ParamByName('DESTINO').AsString:=UFDestinario;
                          Pesquisa.ICMS.Open;

                          ICMS.vICMSST     :=  Arredonda((((ICMS.vBCST * pesquisa.Produto.FieldByName('PROD_ICMS_ST').AsFloat)/100)-((Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat* pesquisa.Produto.FieldByName('PROD_ICMS_ST').AsFloat)/100)),2) ;


                          //ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                        //  ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito

                         // Valor_vBC     := Valor_vBC + Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat;
                          Valor_vBCST   := Arredonda((Valor_vBCST + ICMS.vBCST),2);
                          Valor_vST:=Arredonda((Valor_vST  + ICMS.vICMSST),2);

                          Impressao.Add('********** CSOSN 201***************');

                          Impressao.Add('ICMS.pMVAST:= '   + FloatToStr(ICMS.pMVAST));
                          Impressao.Add('ICMS.pRedBCST:= ' + FloatToStr(ICMS.pRedBCST));
                          Impressao.Add('ICMS.vBCST := '   + FloatToStr(ICMS.vBCST));
                          Impressao.Add('ICMS.vICMS:= '    + FloatToStr(ICMS.vICMS));

                          Impressao.Add('ICMS.vICMSST:= '  + FloatToStr(ICMS.vICMSST));
                          Impressao.Add('ICMS.pICMSST:= '  + FloatToStr(ICMS.pICMSST));

                          Impressao.Add('ICMS.pCredSN:= '  + FloatToStr(ICMS.pCredSN));
                          Impressao.Add('ICMS.vCredICMSSN:= '  + FloatToStr(ICMS.vCredICMSSN));

                          Impressao.Add('');

                        end;


                        //mesmo 201
                        csosn202:
                        begin

                          (*

                               202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária -
                               Classificam-se neste código as operações que não permitem a indicação da alíquota do ICMS devido pelo Simples Nacional e
                               do valor do crédito, e não estejam abrangidas nas hipóteses dos códigos 103, 203, 300, 400, 500 e 900, e com cobrança do
                               ICMS por substituição tributária.

                          *)

                          ICMS.modBCST     := dbisMargemValorAgregado;
                         // ICMS.pMVAST      := Pesquisa.Produto.fieldbyname('PRO_MVA').Value;
                         // ICMS.pRedBCST    := 00.00;
                          ICMS.vBCST       := Arredonda((Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat + Pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat ) * ((100 + Pesquisa.Produto.fieldbyname('PRO_MVA').AsFloat)/100),2);
                         // ICMS.vICMS       := (Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat  *  pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat);

                          //original
                          //ICMS.pICMSST     :=  pesquisa.Produto.FieldByName('PROD_ICMS_ST').AsFloat;

                          //substituir por
                          Pesquisa.ICMS.Close;
                          Pesquisa.ICMS.SQL.Clear;
                          Pesquisa.ICMS.Sql.Add('select *  from ICMS WHERE  ICMS_UF =:DESTINO');
                          Pesquisa.ICMS.ParamByName('DESTINO').AsString:=UFDestinario;
                          Pesquisa.ICMS.Open;

                          ICMS.pICMSST:=Arredonda(Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsCurrency,2);

                          ICMS.vICMSST     :=  Arredonda((((ICMS.vBCST * pesquisa.Produto.FieldByName('PROD_ICMS_ST').AsFloat)/100)-((Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat* pesquisa.Produto.FieldByName('PROD_ICMS_ST').AsFloat)/100)),2) ;


                          //ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                        //  ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito

                         // Valor_vBC     := Valor_vBC + Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat;
                          Valor_vBCST   := Arredonda(Valor_vBCST + ICMS.vBCST,2);
                          Valor_vST:=Arredonda(Valor_vST  + ICMS.vICMSST,2);
                        end;


                        //mesmo 201
                        csosn203:
                        Begin

                          (*

                            203 - Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária -
                            Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contemplados com isenção para faixa
                            de receita bruta nos termos da Lei Complementar nº 123, de 2006, e com cobrança do ICMS por substituição tributária.

                          *)

                          ICMS.modBCST     := dbisMargemValorAgregado;
                         // ICMS.pMVAST      := Pesquisa.Produto.fieldbyname('PRO_MVA').Value;
                         // ICMS.pRedBCST    := 00.00;
                          ICMS.vBCST       := Arredonda((Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat + Pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat ) * ((100 + Pesquisa.Produto.fieldbyname('PRO_MVA').AsFloat)/100),2);
                         // ICMS.vICMS       := (Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat  *  pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat);

                          //original
                          //ICMS.pICMSST     :=  pesquisa.Produto.FieldByName('PROD_ICMS_ST').AsFloat;

                          //substituir por
                          Pesquisa.ICMS.Close;
                          Pesquisa.ICMS.SQL.Clear;
                          Pesquisa.ICMS.Sql.Add('select *  from ICMS WHERE  ICMS_UF =:DESTINO');
                          Pesquisa.ICMS.ParamByName('DESTINO').AsString:=UFDestinario;
                          Pesquisa.ICMS.Open;

                          ICMS.vICMSST     :=  Arredonda((((ICMS.vBCST * pesquisa.Produto.FieldByName('PROD_ICMS_ST').AsFloat)/100)-((Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat* pesquisa.Produto.FieldByName('PROD_ICMS_ST').AsFloat)/100)),2) ;


                          //ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                        //  ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito

                         // Valor_vBC     := Valor_vBC + Pesquisa.Itens_nfe.FieldByName('INFE_VLR_TOTAL').AsFloat;
                          Valor_vBCST := Arredonda( (Valor_vBCST + ICMS.vBCST),2);
                          Valor_vST   := Arredonda( (Valor_vST  + ICMS.vICMSST),2);

                        End;

                        csosn300:
                        begin

                          (*
                               300 - Imune - Classificam-se neste código as operações praticadas por optantes pelo Simples Nacional contempladas
                                     com imunidade do ICMS.
                          *)

                        end;


                        csosn400:
                        begin

                          (*

                               400 - Não tributada pelo Simples Nacional - Classificam-se neste código as operações praticadas por optantes pelo
                                     Simples Nacional não sujeitas à tributação pelo ICMS dentro do Simples Nacional.
                          *)

                        end;


                        csosn500:
                        begin

                          (*

                               500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação -
                                     Classificam-se neste código as operações sujeitas exclusivamente ao regime de substituição tributária na condição
                                     de substituído tributário ou no caso de antecipações.

                          *)

                            //ICMS.vBCSTRet := Pesquisa.Itens_nfe.fieldbyname('base_sub').Value;
                            //ICMS.vICMSSTRet :=Pesquisa.Itens_nfe.fieldbyname('icms_sub').Value;
                        end;


                        csosn900:
                        begin

                          (*

                              900 - Outros - Classificam-se neste código as demais operações que não se enquadrem nos
                                    códigos 101, 102, 103, 201, 202, 203, 300, 400 e 500.



                            Exemplo de XML para CRT=1 e CSOSN = 900, com informação do CSOSN
                            <ICMS>
                               <ICMSSN900>
                                   <orig>0</orig>
                                   <CSOSN>900</CSOSN>
                               </ICMSSN900>
                            </ICMS>

                            Exemplo de XML para CRT=1 e CSOSN = 900, com informação do CSOSN e valor do ICMS passível de crédito pelo destinatário
                            <ICMS>
                               <ICMSSN900>
                                   <orig>0</orig>
                                   <CSOSN>900</CSOSN>
                                   <pCredSN>1.25</pCredSN>
                                   <vCredICMSSN>12.96</vCredICMSSN>
                               </ICMSSN900>
                            </ICMS>

                            Exemplo de XML para CRT=1 e CSOSN = 900, com informação do CSOSN e ICMS próprio
                            <ICMS>
                               <ICMSSN900>
                                   <orig>0</orig>
                                   <CSOSN>900</CSOSN>
                                   <modBC>3</modBC>
                                   <pRedBC>10.00</pRedBC>
                                   <vBC>90.00</vBC>
                                   <pICMS>18.00</pICMS>
                                   <vICMS>16.20</vICMS>
                               </ICMSSN900>
                            </ICMS>

                            Exemplo de XML para CRT=1 e CSOSN = 900, com informação do CSOSN, ICMS próprio e ICMS ST
                            <ICMS>
                               <ICMSSN900>
                                   <orig>0</orig>
                                   <CSOSN>900</CSOSN>
                                   <modBC>3</modBC>
                                   <pRedBC>10.00</pRedBC>
                                   <vBC>90.00</vBC>
                                   <pICMS>7.00</pICMS>
                                   <vICMS>6.30</vICMS>
                                   <modBCST>4</modBCST>
                                   <pMVAST>100.00</pMVAST>
                                   <pRedBCST>10.00</pRedBCST>
                                   <vBCST>162.00</vBCST>
                                   <pICMSST>18.00</pICMSST>
                                   <vICMSST>22.86</vICMSST>
                               </ICMSSN900>
                            </ICMS>


                          *)


                            {ICMS.modBC := dbiMargemValorAgregado;
                            ICMS.vBC := Pesquisa.Itens_nfe.fieldbyname('base_calculo').Value;
                            ICMS.pRedBC := Pesquisa.Itens_nfe.fieldbyname('icms_reduzido').Value;
                            ICMS.pICMS := Pesquisa.Itens_nfe.fieldbyname('ICMS').asfloat;
                            ICMS.vICMS := Pesquisa.Itens_nfe.fieldbyname('valor_icms').Value;
                            ICMS.modBCST := dbisMargemValorAgregado;
                            ICMS.pMVAST := Pesquisa.Itens_nfe.fieldbyname('margem_agregada').Value;
                            ICMS.pRedBCST := 00.00;
                            ICMS.vBCST := Pesquisa.Itens_nfe.fieldbyname('base_sub').Value;
                            ICMS.pICMSST := 00.00;
                            ICMS.vICMSST := Pesquisa.Itens_nfe.fieldbyname('icms_sub').Value;
                            ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                            ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito }
                        end;

                      end; // fim do case icms.csosn

                   end;



                 3:begin

                     if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '000') or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '00') or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '0') then
                       ICMS.cst := cst00;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '010')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '10')  then
                        ICMS.cst := cst10;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '020')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '20')  then
                        ICMS.cst := cst20;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '030')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '30')  then
                        ICMS.cst := cst30;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '040')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '40')  then
                        ICMS.cst := cst40;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '041')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '41')  then
                        ICMS.cst := cst41;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '050')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '50')  then
                        ICMS.cst := cst50;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '051')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '51')  then
                        ICMS.cst := cst51;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '060')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '60')  then
                        ICMS.cst := cst60;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '070')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '70')  then
                        ICMS.cst := cst70;
                      if (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '090')  or (Pesquisa.Integracao.fieldbyname('INT_TIPO_ICMS').asstring = '90')  then
                        ICMS.cst := cst90;

                      case ICMS.CST of

                        cst00: begin

                                 ICMS.modBC := dbiValorOperacao;
                                 ICMS.vBC := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;

                                 Valor_vBC:= ICMS.vBC;

                                 Pesquisa.ICMS.Close;
                                 Pesquisa.ICMS.SQL.Clear;
                                 Pesquisa.ICMS.SQL.Add('select * from icms where ICMS_UF =:UF');
                                 Pesquisa.ICMS.ParamByName('UF').AsString:=UFDestinario;
                                 Pesquisa.ICMS.Open;


                                 if UFEmitente = UFDestinario then begin

                                    ICMS.pICMS:= Arredonda(Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsCurrency,2);
                                    ICMS.vICMS:= Arredonda((( ICMS.vBC  * ICMS.pICMS )/ 100),2);

                                    Valor_VICMS:= Arredonda((Valor_VICMS + ICMS.vICMS),2);

                                 end else begin

                                   ICMS.pICMS:= Arredonda(Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsFloat,2);
                                   ICMS.vICMS:= Arredonda((( ICMS.vBC  * ICMS.pICMS )/ 100),2);

                                   Valor_VICMS:= Arredonda((Valor_VICMS + ICMS.vICMS),2);

                                 end;

                               End ;


                        cst10: begin

                                  //ICMS CST 10 (Tributada e com cobrança do ICMS por substituição tributária)
                                   //Base ICMS......................: 100,00   -> soma de total de produtos

                                  // Base ICMS......................: 100,00
                                  // Alíquota ICMS Operação.........: 12%
                                  //Alíquota ICMS Interna Destino..: 17% ->
                                  //MVA Ajustado...................: 50,00%
                                  //Valor ICMS Próprio.............: 12,00
                                  //Valor do IPI...................: 0,00

                                  //Base de cálculo ST = (Base de calculo + IPI) * ([100 + MVA Ajustado]/100)

                                  // Base de cálculo ST = (100,00 + 0,00) * ([100 + 50]/100)
                                  // Base de cálculo ST = 100,00 * 1,50
                                  // Base de cálculo ST = 150,00

                                  // Valor ICMS ST = (Base de calculo ST * Alíquota ICMS Interna Destino) - Valor de ICMS Próprio
                                  // Valor ICMS ST = (150,00 * 17%) - 12,00
                                  // Valor ICMS ST = 25,50 - 12,00
                                  // Valor ICMS ST = 13,50

                                  Pesquisa.ICMS.Close;
                                  Pesquisa.ICMS.SQL.Clear;
                                  Pesquisa.ICMS.SQL.Add('select * from icms where ICMS_UF =:UF');
                                  Pesquisa.ICMS.ParamByName('UF').AsString:=UFDestinario;
                                  Pesquisa.ICMS.Open;


                                  if UFEmitente = UFDestinario then begin

                                    ICMS.pICMS   := Arredonda(Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsCurrency,2);
                                    ICMS.vICMS   := Arredonda(((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat * ICMS.pICMS) /100),2);

                                    Valor_VICMS:= Arredonda((Valor_VICMS + ICMS.vICMS),2);

                                  end else begin

                                    ICMS.pICMS   := Arredonda(Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsCurrency,2);
                                    ICMS.vICMS   := Arredonda(((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat * ICMS.pICMS) /100),2);

                                    Valor_VICMS:= Arredonda((Valor_VICMS + ICMS.vICMS),2);

                                  end;




                                  ICMS.vBC     := Arredonda(Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat,2);

                                  ICMS.vBCST   := Arredonda( (((ICMS.vBC + Pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat)) * ((((100+((Pesquisa.Produto.FieldByName('PRO_MVA').AsFloat *100))/100))/100))),2);



                                  ICMS.vICMSST := Arredonda( ((((ICMS.vBCST  * Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsFloat)/100)) - ICMS.vICMS  ),2);


                                  Valor_VICMS  := Arredonda((Valor_VICMS + ICMS.vICMS),2);
                                  Valor_vBCST  := Arredonda(( Valor_vBCST + ICMS.vBCST),2);
                                  Valor_vST    := Arredonda((Valor_vST  + ICMS.vICMSST),2);
                                  Valor_vBC     := Arredonda((ICMS.vBC),2);

                               End;


                        cst20: begin


                                  ICMS.pRedBC  := Arredonda(Pesquisa.Produto.FieldByName('PROD_RED_BASE_ICMS').AsFloat,2);
                                  ICMS.vBC     := Arredonda((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat * (1 - (ICMS.pRedBC/100))),2);


                                  Pesquisa.ICMS.Close;
                                  Pesquisa.ICMS.SQL.Clear;
                                  Pesquisa.ICMS.Sql.Add('select *  from ICMS WHERE  ICMS_UF =:DESTINO');
                                  Pesquisa.ICMS.ParamByName('DESTINO').AsString:=UFDestinario;
                                  Pesquisa.ICMS.Open;


                                   if UFEmitente = UFDestinario then begin

                                    ICMS.pICMS:= Arredonda(Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsCurrency,2);
                                    ICMS.vICMS:= Arredonda((( ICMS.vBC  * ICMS.pICMS )/ 100),2);

                                    Valor_VICMS:= Arredonda((Valor_VICMS + ICMS.vICMS),2);

                                 end else begin

                                   ICMS.pICMS:= Arredonda(Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsFloat,2);
                                   ICMS.vICMS:= Arredonda((( ICMS.vBC  * ICMS.pICMS )/ 100),2);

                                   Valor_VICMS:= Arredonda((Valor_VICMS + ICMS.vICMS),2);

                                 end;


                                  Valor_vBCST  := Arredonda((Valor_vBCST + ICMS.vBCST),2);
                                  Valor_vST    := Arredonda((Valor_vST  + ICMS.vICMSST),2);
                                  Valor_vBC    := Valor_vBC + Arredonda( ICMS.vBC, 2);

                               End;


                        cst30: Begin

                                 (* ICMS CST 30 ou Isenta ou não tributada e com cobrança do ICMS por substituição tributária
                                     Base de cálculo ICMS próprio.: 100,00
                                     MVA Ajustado................: 50%
                                     Alíquota ICMS................: 17%
                                     Valor ICMS Simples......: 0
                                     Valor IPI...........................: 0,00

                                     Base de cálculo ST = (Base de cálculo + IPI) * ([100 + MVA Ajustado]/100)
                                     Base de cálculo ST = (100 + 0,00)* ([100 + 50]/100)
                                     Base de cálculo ST = 100 * 1,5
                                     Base de cálculo ST = 150,00

                                     Valor ICMS Pŕoprio para ST = 100 * 17%
                                     Valor ICMS Próprio para ST = 17,00

                                     Valor ICMS ST = (Base de calculo ST * Alíquota ICMS) - Valor ICMS Próprio
                                     Valor ICMS ST = (150,00 * 17%) - 17
                                     Valor ICMS ST = 25,50 - 17
                                     Valor ICMS ST = 8,50
                                 *)

                                  Pesquisa.ICMS.Close;
                                  Pesquisa.ICMS.SQL.Clear;
                                  Pesquisa.ICMS.SQL.Add('select * from icms where ICMS_UF =:UF');
                                  Pesquisa.ICMS.ParamByName('UF').AsString:=UFDestinario;
                                  Pesquisa.ICMS.Open;


                                  if UFEmitente = UFDestinario then begin

                                    ICMS.pICMS   := Arredonda(Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsCurrency,2);
                                    ICMS.vICMS   := Arredonda(((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat * ICMS.pICMS) /100),2);

                                  //  Valor_VICMS:= Arredonda((Valor_VICMS + ICMS.vICMS),2);

                                  end else begin

                                    ICMS.pICMS   := Arredonda(Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsCurrency,2);
                                    ICMS.vICMS   := Arredonda(((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat * ICMS.pICMS) /100),2);

                                  //  Valor_VICMS:= Arredonda((Valor_VICMS + ICMS.vICMS),2);

                                  end;


                                  ICMS.vBC     := Arredonda(Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat,2);
                                  ICMS.vBCST   := Arredonda( (((ICMS.vBC + Pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat)) * ((((100+((Pesquisa.Produto.FieldByName('PRO_MVA').AsFloat *100))/100))/100))),2);

                                  ICMS.vICMSST := Arredonda( ((((ICMS.vBCST  * Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsFloat)/100)) - Arredonda(((Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsCurrency /100) * Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat),2)  ),2);




                                 // Valor_VICMS  := Arredonda((Valor_VICMS + ICMS.vICMS),2);
                                  Valor_vBCST  := Arredonda(( Valor_vBCST + ICMS.vBCST),2);
                                  Valor_vST    := Arredonda((Valor_vST  + ICMS.vICMSST),2);
                                  //Valor_vBC     := Arredonda((ICMS.vBC),2);





                               End;

                               //CST de ICMS 40, 41, 50, 51 e 60 não se calcula o valor do ICMS

                        cst40: begin

                                       (*  40 - Isenta
                                           <ICMS>
                                             <ICMS40>
                                                 <orig>0</orig>
                                                 <CST>40</CST>
                                             </ICMS40>
                                          </ICMS>



                                       (//40 - Isenta, com isenção condicional
                                          <ICMS>
                                           <ICMS40>
                                               <orig>0</orig>
                                               <CST>40</CST>
                                               <vICMSDeson>1800.00</vICMSDeson>
                                               <motDesICMS>1</motDesICMS>
                                           </ICMS40>
                                          </ICMS>
                                       *)


                                     end;


                         cst41: ; // 41 - Não tributada
                         cst50: ; //50 - Suspensão


                         cst51: begin
                                       (*
                                           51 - Diferimento, sem informação do ICMS diferido (diferimento total)

                                           <ICMS>
                                             <ICMS51>
                                                <orig>0</orig>
                                                <CST>51</CST>
                                             </ICMS51>
                                          </ICMS>


                                          51 - Diferimento, com informação do valor do tributo diferido quando exigido pela legislação
                                          <ICMS>
                                             <ICMS51>
                                                <orig>0</orig>
                                                <CST>51</CST>
                                                <modBC>3</modBC>
                                                <pRedBC>20.00</pRedBC>
                                                <vBC>80.00</vBC>
                                                <pICMS>18.00</pICMS>
                                                <vICMSOp>9.60</vICMSOp>
                                                <pDif>100.00</pDif >
                                                <vICMSDif>9.60</vICMSDif>
                                             </ICMS51>
                                          </ICMS>


                                          •Os campos modBC, pRedBC, vBC, pICMS e vICMS podem ser omitidos quando não exigidos pela legislação ou o seu conteúdo for igual a zero.

                                          **Exemplo de XML para CST = 51 - Diferimento parcial* de 33,33% do ICMS devido*
                                          <ICMS>
                                             <ICMS51>
                                                <orig>0</orig>
                                                <CST>51</CST>
                                                <modBC>3</modBC>
                                                <vBC>1000.00</vBC>
                                                <pICMS>18.00</pICMS>
                                                <vICMSOp>180.00</vICMSOp>
                                                <pDif>33.33</pDif >
                                                <vICMSDif>60.00</vICMSDif>
                                                <vICMS>120.00</vICMS>
                                          <ICMS51></ICMS>

                                       *)

                                End;

                         cst60: begin
                                       (*
                                         60 - ICMS cobrado anteriormente por substituição tributária

                                          <ICMS>
                                             <ICMS60>
                                                 <orig>0</orig>
                                                 <CST>60</CST>
                                                 <vBCSTRet>135.00</vBCSTRet>
                                                 <vICMSSTRet>24.30</vICMSSTRet>
                                             </ICMS60>
                                          </ICMS>


                                       ICMS.vBCSTRet:=0;
                                       ICMS.vICMSSTRet:=0;

                                       *)

                                  Valor_VICMS   :=  Arredonda((Valor_VICMS + ICMS.vICMS),2);
                                  Valor_vBCST   :=  Arredonda((Valor_vBCST + ICMS.vBCST),2);
                                  Valor_vST     :=  Arredonda((Valor_vST  + ICMS.vICMSST),2);

                                end ;


                         cst70: Begin

                                       (*
                                          cst 70 - red. base icms proprio e icms ST
                                          Variáveis para Cálculo da CST 70:
                                          Base de calculo: 100,00
                                          Alíquota ICMS Próprio: 12%
                                          Alíquota ICMS ST : 17%
                                          MVA Ajustado: 45%
                                          % Red. Base ICMS Próprio: 40%
                                          % Red. Base ICMS ST: 40%
                                          Valor IPI : 0,00

                                          Calculo Base de ICMS Próprio com Redução:
                                          Base Reduzida = Base ICMS * (100 – % Red. Base ICMS Próprio)  / 100
                                          Base Reduzida = 100,00 * (100 – 40) / 100
                                          Base Reduzida = 60,00

                                          Calculo Base ICMS ST:
                                          Base ICMS ST = (Base ICMS  + IPI)* MVA Ajustado  / 100
                                          Base ICMS ST = (100,00 + 0,00) * (100 + 45)  / 100
                                          Base ICMS ST = 145,00

                                          Calculo Base Reduzida ICMS ST:
                                          Base Reduzida ST = Base ICMS ST * (100 – % Red. Base ICMS ST)  / 100
                                          Base Reduzida ST = 145,00 * (100 – 40) / 100
                                          Base Reduzida ST = 87,00

                                          Valor ICMS Próprio:
                                          Valor ICMS Próprio = Base Reduzida *Alíquota ICMS Próprio / 100
                                          Valor ICMS Próprio = 60 * 12 / 100
                                          Valor ICMS Próprio = 7,20

                                          Valor ICMS ST:
                                          Valor ICMS ST = (Base Reduzida ICMS ST * Alíquota ICMS ST / 100) – Valor ICMS Próprio
                                          Valor ICMS ST = (87,00 * 17 / 100) – 7,20
                                          Valor ICMS ST = 14,79 – 7,20
                                          Valor ICMS ST = 7,59


                                       *)

                                        ICMS.pICMS   := Arredonda((Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat),2);
                                        ICMS.pRedBC  := Arredonda((Pesquisa.Produto.FieldByName('PROD_RED_BASE_ICMS').AsFloat),2);

                                        ICMS.vBC     := Arredonda((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat * (1 - (ICMS.pRedBC/100))),2);
                                        ICMS.vBCST   := Arredonda((((ICMS.vBC + (Pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat/100) * Pesquisa.Produto.FieldByName('PRO_MVA').AsFloat)/100)),2);

                                        ICMS.vICMS   := Arredonda(((ICMS.vBCST  * ICMS.pICMS)/100),2);
                                        ICMS.vICMSST := Arredonda((((ICMS.vBCST * ICMS.pICMS )/100)-ICMS.pICMS),2);

                             End;


                       cst90: Begin



                                  {
                                  Incide ICMS  //INCIDE ICMS

                                  o lance do 90 eh simples, qndo for 90, vc faz o if verificanod pelo codigo da integracao o q ele marcou
                                  se marcou incide icms, ai vc poe as tags e calculo do icms
                                  se nao marcou icms e marcou icms-st, so a parte de st.. se marcou os oids, faz o icms e o icms-st
                                 }

                                 //se nao tiver nada marcado na intergração ele manda igua ta ai dentro
                                 if (Pesquisa.Integracao.FieldByName('INT_ICMS_REDST').AsString ='N') AND
                                    (Pesquisa.Integracao.FieldByName('INT_ICMS_RED').AsString ='N')       AND
                                    (Pesquisa.Integracao.FieldByName('INT_ICMS').AsString ='N')           then begin


                                     {Exemplo de XML para CST = 90 - Outras, com informação somente do CST

                                          <ICMS>
                                             <IMS90>
                                                 <orig>0</orig>
                                                 <CST>90</CST>
                                             </ICMS90>
                                          </ICMS>
                                     }

                                 end;


                                 //se tiver marcado incide icms na integração faz o calculo abaixo
                                 if Pesquisa.Integracao.FieldByName('INT_ICMS').AsString ='S' then begin

                                    {<ICMS>
                                             <ICMS90>
                                                 <orig>0</orig>
                                                 <CST>90</CST>
                                                 <modBC>3</modBC>
                                                 <pRedBC>10.00</pRedBC>
                                                 <vBC>90.00</vBC>
                                                 <pICMS>18.00</pICMS>
                                                 <vICMS>16.20</vICMS>
                                             </ICMS90>
                                          </ICMS>  }



                                     ICMS.modBC := dbiValorOperacao;
                                     ICMS.vBC := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;

                                     if UFEmitente = UFDestinario then begin

                                        ICMS.pICMS:=Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat;
                                        ICMS.vICMS:= Arredonda(((( ICMS.vBC  * ICMS.pICMS )/ 100)),2);

                                     end else begin

                                       Pesquisa.ICMS.Close;
                                       Pesquisa.ICMS.SQL.Clear;
                                       Pesquisa.ICMS.SQL.Add('select * from icms where ICMS_UF =:UF');
                                       Pesquisa.ICMS.ParamByName('UF').AsString:=UFDestinario;
                                       Pesquisa.ICMS.Open;

                                       ICMS.pICMS:=Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsFloat;
                                       ICMS.vICMS:= Arredonda(((( ICMS.vBC  * ICMS.pICMS )/ 100)),2);

                                     end;

                                    { ICMS.modBC   := dbiValorOperacao;
                                     ICMS.pRedBC  := Pesquisa.Produto.FieldByName('PROD_RED_BASE_ICMS').AsFloat;
                                     ICMS.vBC     := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                                     ICMS.pICMS   := Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat;
                                     ICMS.vICMS   := ((Pesquisa.Produto.FieldByName('PROD_RED_BASE_ICMS').AsFloat * Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat )/100)
                                    }
                                 end;



                                 if (pesquisa.Produto.FieldByName('PROD_ST_ICMS').AsString ='SIM') AND
                                    (Pesquisa.Integracao.FieldByName('INT_ICMS').AsString ='N')           then begin

                                   ICMS.vBC     :=  Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                                   ICMS.vBCST   := (ICMS.vBC + (Pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat/100) * Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat ) * ((100 + Pesquisa.Produto.FieldByName('PRO_MVA').AsFloat)/100);
                                   ICMS.vICMS   := ((Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat /100) * Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat);
                                   ICMS.vICMSST := (ICMS.vBCST  * Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat) - Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat;
                                 end;



                                 if (Pesquisa.Integracao.FieldByName('INT_ICMS').AsString ='S') AND
                                    (pesquisa.Produto.FieldByName('PROD_ST_ICMS').AsString ='SIM') then  begin


                                   Pesquisa.ICMS.Close;
                                   Pesquisa.ICMS.SQL.Clear;
                                   Pesquisa.ICMS.SQL.Add('select * from icms where ICMS_UF =:UF');
                                   Pesquisa.ICMS.ParamByName('UF').AsString:=UFDestinario;
                                   Pesquisa.ICMS.Open;

                                   ICMS.pICMS   := Arredonda((Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat),2);
                                   ICMS.vICMS   := Arredonda((((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat * ICMS.pICMS) /100)),2);
                                   ICMS.vBC     := Arredonda((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat),2);
                                   ICMS.vBCST   := Arredonda((ICMS.vBC + ((Pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat * ICMS.vBC) /100)* ((100 + Pesquisa.Produto.FieldByName('PRO_MVA').AsFloat)/100)),2);
                                   ICMS.vICMSST := Arredonda((((Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat * Pesquisa.ICMS.FieldByName('ICMS_INTERNO').AsFloat) - ICMS.vBCST)),2);

                                 end;


                                       (*



                                          Exemplo de XML para CST = 90 - Outras, com informação do CST e ICMS ST

                                          <ICMS>
                                             <ICMS90>
                                                 <orig>0</orig>
                                                 <CST>90</CST>
                                                 <modBCST>4</modBCST>
                                                 <pMVAST>100.00</pMVAST>
                                                 <pRedBCST>10.00</pRedBCST>
                                                 <vBCST>162.00</vBCST>
                                                 <pICMSST>18.00</pICMSST>
                                                 <vICMSST>12.96</vICMSST>
                                             </ICMS90>
                                          </ICMS>

                                          Exemplo de XML para CST = 90 - Outras, com informação do CST, ICMS próprio e ICMS ST

                                          <ICMS>
                                             <ICMS90>
                                                 <orig>0</orig>
                                                 <CST>90</CST>
                                                 <modBC>3</modBC>
                                                 <pRedBC>10.00</pRedBC>
                                                 <vBC>90.00</vBC>
                                                 <pICMS>18.00</pICMS>
                                                 <vICMS>16.20</vICMS>
                                                 <modBCST>4</modBCST>
                                                 <pMVAST>100.00</pMVAST>
                                                 <pRedBCST>10.00</pRedBCST>
                                                 <vBCST>162.00</vBCST>
                                                 <pICMSST>18.00</pICMSST>
                                                 <vICMSST>12.96</vICMSST>
                                             </ICMS90>
                                          </ICMS>
                                       *)

                                     End;




                      end;




                      if UFEmitente <> UFDestinario then Begin


                          if Pesquisa.Cliente.FieldByName('COD_TIPO_CONTRIBUINTE').AsInteger <> 1 then begin


                              if Pesquisa.Empresa.FieldByName('COD_CRT').AsInteger = 3 then begin



                                  if (cst00 = ICMS.CST) or (cst10 = ICMS.CST) or (cst20 = ICMS.CST) or (cst70 = ICMS.CST) then begin

                                    if UFEmitente = UFDestinario then begin

                                       //valor com a aliquota do produto
                                      ValorIcmsEmitente:=Arredonda((( Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat *  Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat / 100)),2);
                                      //valor com a aliquota de icms do destinatario
                                      ValorIcmsDestinatario:=Arredonda(((  Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat * Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat / 100)),2);

                                    end else Begin

                                       //Busco a aliquota do destinatario
                                      Pesquisa.ICMS.Close;
                                      Pesquisa.ICMS.SQL.Clear;
                                      Pesquisa.ICMS.Sql.Add('select *  from ICMS WHERE  ICMS_UF =:DESTINO');
                                      Pesquisa.ICMS.ParamByName('DESTINO').AsString:=UFDestinario;
                                      Pesquisa.ICMS.Open;

                                                //valor com a aliquota do produto
                                      ValorIcmsEmitente:=Arredonda((( Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat *  Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat / 100)),2);
                                      //valor com a aliquota de icms do destinatario
                                      ValorIcmsDestinatario:=Arredonda((( Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsFloat * Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat / 100)),2);

                                      DiferencaUF:= Arredonda((ValorIcmsEmitente - ValorIcmsDestinatario),2);

                                      // partilha do ICMS e fundo de probreza
                                      with ICMSUFDest do begin

                                          vBCUFDest      := Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat;     //valor total da nfe
                                          pFCPUFDest     := Pesquisa.Produto.FieldByName('PROD_FCP').AsFloat;    //percentual fcp

                                          pICMSUFDest    := Arredonda((Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsFloat),2);
                                          pICMSInter     := Arredonda((Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat),2);
                                          pICMSInterPart := 40;
                                          vFCPUFDest     := 0;
                                          vICMSUFDest    := Arredonda(( ((ValorIcmsEmitente * pICMSInterPart )/100)),2);
                                          vICMSUFRemet   := Arredonda((((ValorIcmsEmitente * 60)/100)),2);

                                      end;



                          {
                          with ICMSUFDest do begin

                              vBCUFDest      := StrToFloat(FormatMoneyEx(FloatToStr(Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat),2));//Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat;     //valor total da nfe
                              pFCPUFDest     := StrToFloat(FormatMoneyEx(FloatToStr(Pesquisa.Produto.FieldByName('PROD_FCP').AsFloat),2));//Pesquisa.Produto.FieldByName('PROD_FCP').AsFloat;    //percentual fcp

                              pICMSUFDest    := StrToFloat(FormatMoneyEx(FloatToStr(ValorIcmsEmitente),2));
                              pICMSInter     := StrToFloat(FormatMoneyEx(FloatToStr(ValorIcmsDestinatario),2));
                              pICMSInterPart := 40;
                              vFCPUFDest     := 0;
                              vICMSUFDest    := StrToFloat(FormatMoneyEx(FloatToStr(((ValorIcmsEmitente * pICMSInterPart )/100)),2)); //;  ((ValorIcmsEmitente * pICMSInterPart )/100)
                              vICMSUFRemet   := StrToFloat(FormatMoneyEx(FloatToStr(((ValorIcmsEmitente * 60)/100)),2));//((ValorIcmsEmitente * 60)/100);

                          end;}

                                    End;



                                  end;



                                  //Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsFloat;   //icms destinatario
                                  //Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat;     //icms do produto
                                  //Pesquisa.Produto.FieldByName('PROD_FCP').AsFloat;      // fcp

                                  (*


                                  conta do DIFAL

                                  Demonstração do cálculo do ICMS TOTAL da operação
                                  valor da mercadoria sem impostos: R$ 1.000,00
                                  Alíquota interna do ICMS da UF destino: 17%
                                  BC ICMS da operação interna na UF destino:
                                  BC = 1000,00
                                  ICMS da operação interna na UF destino: R$ 170,00 (17% de R$ 1.000,00)

                                  Demonstração do cálculo do ICMS origem

                                  valor da mercdoria sem impostos: R$ 1.000,00
                                  Alíquota interestadual: 12%
                                  BC ICMS da operação interestadual:
                                  BC = 1000,00
                                  ICMS da operação interestadual para UF destino: R$ 120,00 (12% de R$ 1.000,00)


                                  //valor com a aliquota de icms do destinatario
                                 A:= ( Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsFloat * Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat / 100)

                                  //valor com a aliquota do produto
                                 B:= ( Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat *  Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat / 100)


                                 difal

                                   A - B = X



                                  DIFAL = valor do ICMS TOTAL da operação - valor do ICMS da operação interestadual
                                  DIFAL = 170,00 - 120,00
                                  DIFAL = 50,00

                                  Partilha do DIFAL

                                  Em 2016: 40% UF destino e 60% UF de origem

                                  UF destino - R$ 20,00 (40% de R$ 50,00)
                                  UF origem - R$ 30,00 (60% de R$ 50,00)

                                  Tags do grupo XML ICMSUFDest:

                                  vBCUFDest = 1000.00
                                  pFCPUFDest = 0.00
                                  pICMSUFDest = 17.00
                                  pICMSInter = 12.00
                                  pICMSInterPart = 40.00
                                  vFCPUFDest = 0.00
                                  vICMSUFDest = 20.00
                                  vICMSUFRemet = 30.00



                                 *)

                                 //Busco a aliquota do destinatario
                                { Pesquisa.ICMS.Close;
                                 Pesquisa.ICMS.SQL.Clear;
                                 Pesquisa.ICMS.SQL.Add('select * from icms where ICMS_UF =:UF');
                                 Pesquisa.ICMS.ParamByName('UF').AsString:=UFDestinario;
                                 Pesquisa.ICMS.Open;

                                 //valor com a aliquota do produto
                                 ValorIcmsEmitente:= Arredonda((( Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat *  Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat / 100)),2);
                                 //valor com a aliquota de icms do destinatario
                                 ValorIcmsDestinatario:=Arredonda((( Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsFloat * Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat / 100)),2);

                                 DiferencaUF:= Arredonda((ValorIcmsEmitente - ValorIcmsDestinatario),2);

                                  // partilha do ICMS e fundo de probreza
                                  with ICMSUFDest do begin

                                    vBCUFDest      := Arredonda((Pesquisa.NFe.FieldByName('NFE_IMP_VNF').AsFloat),2);     //valor total da nfe
                                    pFCPUFDest     := Arredonda((Pesquisa.Produto.FieldByName('PROD_FCP').AsFloat),2);    //percentual fcp

                                    pICMSUFDest    := Arredonda((Pesquisa.ICMS.FieldByName('ICMS_ALIQUOTA').AsFloat),2); //ValorIcmsEmitente;
                                    pICMSInter     := Arredonda((Pesquisa.Produto.FieldByName('PROD_ICMS').AsFloat),2);//ValorIcmsDestinatario;
                                    pICMSInterPart := 40.00;
                                    vFCPUFDest     := 0.00;
                                    vICMSUFDest    := Arredonda((((ValorIcmsEmitente * pICMSInterPart )/100)),2);
                                    vICMSUFRemet   := Arredonda((((ValorIcmsEmitente * 60)/100)),2);


                                     S_FCPUFDest:=   Arredonda(( S_FCPUFDest   +  vFCPUFDest),2);
                                     S_ICMSUFDest:=  Arredonda(( S_ICMSUFDest  +  vICMSUFDest),2);
                                     S_ICMSUFRemet:= Arredonda(( S_ICMSUFRemet +  vICMSUFRemet),2);

                                  end;  }

                              end;

                          end;

                      End;




                 end;

              end; // fim do case iCRT




              if (Pesquisa.Integracao.fieldbyname('INT_IPI').asstring = 'S') then begin

                with IPI do begin

                  if Pesquisa.Integracao.fieldbyname('INT_TIPO_IPIS').asstring = '99' then
                    CST      := ipi99 ;

                  case CST of

                    ipi00 : ;

                    ipi99 :
                    begin
                      //clEnq    := '999';
                      vBC    :=  Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                      pIPI   :=  pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat;
                      vIPI   := (Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat * pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat);
                    end;

                  end;
                end;
              end;

              With PIS do begin

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_PIS').asstring   = '1') or (Pesquisa.Integracao.fieldbyname('INT_TIPO_PIS').asstring   = '01') then
                  CST := pis01;

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_PIS').asstring   = '2') or (Pesquisa.Integracao.fieldbyname('INT_TIPO_PIS').asstring   = '02') then
                  CST := pis02;


                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_PIS').asstring   = '7') or (Pesquisa.Integracao.fieldbyname('INT_TIPO_PIS').asstring   = '07') then
                 CST := pis07;

                if Pesquisa.Integracao.fieldbyname('INT_TIPO_PIS').asstring   = '99' then
                  CST := pis99;


                case CST of

                      pis01: Begin

                                PIS.vBC   := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                                PIS.pPIS  := Pesquisa.Produto.FieldByName('PROD_ALIQ_PIS').AsFloat;
                                PIS.vPIS  := ((PIS.vBC * Pesquisa.Produto.FieldByName('PROD_ALIQ_PIS').AsFloat)/100);

                             End;



                      pis02:  Begin

                                PIS.vBC   := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                                PIS.pPIS  := Pesquisa.Produto.FieldByName('PROD_ALIQ_PIS').AsFloat;
                                PIS.vPIS  := ((PIS.vBC * Pesquisa.Produto.FieldByName('PROD_ALIQ_PIS').AsFloat)/100);

                             End;


                      pis03: Begin

                               (*  pis_CST = "03"
                                pis_vBC = 0
                                pis_pPIS = 0
                                pis_qBCProd = 1000
                                pis_vAliqProd = 0.0076
                                pis_vPIS = 0.76


                                PIS.qBCProd     :=  Pesquisa.Produto.FieldByName('PROD_RED_BASE_ICMS').AsFloat
                                PIS.vAliqProd   :=
                                PIS.vPIS        :=


                                <qBCProd>1000.0000</qBCProd>
                                 <vAliqProd>0.0076</vAliqProd>
                                 <vPIS>0.76</vPIS>

                               *)
                             End;

                      (* =======================================================================================================
                         grupo PIS para operação não tributadas - NT (CST = 04, 05, 06, 07, 08 ou 09)
                      =======================================================================================================*)
                      pis04: ;
                      pis05: ;
                      pis06: ;
                      pis07: ;
                      pis08: ;
                      pis09: ;
                      (*=======================================================================================================*)

                      pis49: ;
                      pis50: ;
                      pis51: ;
                      pis52: ;
                      pis53: ;
                      pis54: ;
                      pis55: ;
                      pis56: ;
                      pis60: ;
                      pis61: ;
                      pis62: ;
                      pis63: ;
                      pis64: ;
                      pis65: ;
                      pis66: ;
                      pis67: ;
                      pis70: ;
                      pis71: ;
                      pis72: ;
                      pis73: ;
                      pis74: ;
                      pis75: ;
                      pis98: ;
                      pis99: Begin

                               PIS.qBCProd:=0;
                               PIS.vAliqProd:=0;
                               PIS.vPIS:=0;

                             End;

                end;

              end;

              //cst03
               with PISST do begin

               (*
                    pisst_vBC = 100
                    pisst_pPIS = 0.65
                    pisst_qBCProd = 0
                    pisst_vAliqProd = 0
                    pisst_vPIS = 0.65

                    grupo PIS ST para Alíquota ad valorem
                    <PISST>
                       <vBC>100.00</vBC>
                       <pPIS>0.65</pPIS>
                       <vPIS>0.65</vPIS>
                    </PISST>

               *)

                PIS.vBC   := Pesquisa.Produto.FieldByName('PROD_RED_BASE_ICMS').AsFloat;
                PIS.pPIS  := Pesquisa.Produto.FieldByName('PROD_ALIQ_PIS').AsFloat;
                PIS.vPIS  := ((PIS.vBC * Pesquisa.Produto.FieldByName('PROD_ALIQ_PIS').AsFloat)/100);



                (*
                    grupo PISST para Alíquota específica
                    <PISST>
                       <qBCProd>1000.0000</qBCProd>
                       <vAliqProd>0.0076</vAliqProd>
                       <vPIS>0.76</vPIS>
                    </PISST>


                   PIS.qBCProd    := Pesquisa.Produto.FieldByName('PROD_RED_BASE_ICMS').AsFloat;
                   PIS.vPIS       := Pesquisa.Produto.FieldByName('PROD_ALIQ_IPI').AsFloat;
                   PIS.vAliqProd  := (PIS.qBCProd* PIS.vPIS )/100;
                *)

              end;

              with COFINS do begin


                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '1') OR (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '01') then
                   CST:= cof01;

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '2') OR (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '02') then
                   CST:= cof02;

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '3') OR (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '03') then
                   CST:= cof03;

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '4') OR (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '04') then
                   CST:= cof04;

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '5') OR (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '05') then
                   CST:= cof05;

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '6') OR (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '06') then
                   CST:= cof06;

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '7') or (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '07')  then
                   CST:= cof07;

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '8') or (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '08')  then
                   CST:= cof08;

                if (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '9') or (Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '09')  then
                   CST:= cof09;


                if Pesquisa.Integracao.fieldbyname('INT_TIPO_COFINS').asstring   = '99' then
                   CST:= cof99;



                case CST of

                  cof01: Begin
                           (*
                                grupo COFINS para Alíquota ad valorem (CST = 01 ou 02)
                                cofins_CST = "01"
                                cofins_vBC = 100
                                cofins_pCOFINS = 3.00
                                cofins_qBCProd = 0
                                cofins_vAliqProd = 0
                                cofins_vCOFINS = 3.00


                                <COFINS>
                                  <COFINSAliq>
                                     <CST>01</CST>
                                     <vBC>100.00</vBC>
                                     <pCOFINS>3.00</pCOFINS>
                                     <vCOFINS>3.00</vCOFINS>
                                  </COFINSAliq>
                                </COFINS>

                           *)
                           COFINS.vBC     := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                           COFINS.pCOFINS := Pesquisa.Produto.FieldByName('PROD_ALIQ_COFINS').AsFloat;
                           COFINS.vCOFINS := (COFINS.vBC  * COFINS.pCOFINS);


                         End;


                  cof02: Begin
                           (*
                                grupo COFINS para Alíquota ad valorem (CST = 01 ou 02)
                                cofins_CST = "01"
                                cofins_vBC = 100
                                cofins_pCOFINS = 3.00
                                cofins_qBCProd = 0
                                cofins_vAliqProd = 0
                                cofins_vCOFINS = 3.00


                                <COFINS>
                                  <COFINSAliq>
                                     <CST>01</CST>
                                     <vBC>100.00</vBC>
                                     <pCOFINS>3.00</pCOFINS>
                                     <vCOFINS>3.00</vCOFINS>
                                  </COFINSAliq>
                                </COFINS>

                           *)
                           COFINS.vBC     := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                           COFINS.pCOFINS := Pesquisa.Produto.FieldByName('PROD_ALIQ_COFINS').AsFloat;
                           COFINS.vCOFINS := (COFINS.vBC  * COFINS.pCOFINS);


                         End;


                  cof03: Begin

                            (*
                                cofins_CST = "03"
                                cofins_vBC = 0
                                cofins_pCOFINS = 0
                                cofins_qBCProd = 1000
                                cofins_vAliqProd = 0.0076
                                cofins_vCOFINS = 0.76


                                <COFINS>
                                    <COFINSQtde>
                                       <CST>03</CST>
                                       <qBCProd>1000.0000</qBCProd>
                                       <vAliqProd>0.0076</vAliqProd>
                                       <vCOFINS>0.76</vCOFINS>
                                    </COFINSQtde>
                                </COFINS>



                            COFINS.qBCProd     := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                            COFINS.vAliqProd   :=
                            COFINS.vCOFINS     :=
                             *)

                         End;

                  (*========================================================================================================================
                    operação não tributadas - NT (CST = 04, 05, 06, 07, 08 ou 09)
                   ========================================================================================================================*)
                    cof04: ;
                    cof05: ;
                    cof06: ;
                    cof07: ;
                    cof08: ;
                    cof09: ;
                  (*=======================================================================================================================*)

                  cof49: ;
                  cof50: ;
                  cof51: ;
                  cof52: ;
                  cof53: ;
                  cof54: ;
                  cof55: ;
                  cof56: ;
                  cof60: ;
                  cof61: ;
                  cof62: ;
                  cof63: ;
                  cof64: ;
                  cof65: ;
                  cof66: ;
                  cof67: ;
                  cof70: ;
                  cof71: ;
                  cof72: ;
                  cof73: ;
                  cof74: ;
                  cof75: ;
                  cof98: ;
                  cof99: Begin

                            (*

                               cofins_CST = "99"
                               cofins_vBC = 0
                               cofins_pCOFINS = 0
                               cofins_qBCProd = 0
                               cofins_vAliqProd = 0
                               cofins_vCOFINS = 0

                               <COFINS>
                                   <COFINSOutr>
                                      <CST>99</CST>
                                      <qBCProd>0.0000</qBCProd>
                                      <vAliqProd>0.0000</vAliqProd>
                                      <vCOFINS>0.00</vCOFINS>
                                   </COFINSOutr>
                               </COFINS>

                            *)

                            COFINS.qBCProd   :=0;
                            COFINS.vAliqProd :=0;
                            COFINS.vCOFINS   :=0;

                         end;
                end;

              end;

              with COFINSST do begin

                 (*
                     0 - vBC double 15,2 ? Informar o Valor da BC do COFINS ST, este campo deve ser informado em caso de alíquota ad valorem.

                     1 - pCOFINS double 5,2-4 ? Informar a alíquota percentual do COFINS ST, este campo deve ser informado em caso de alíquota ad valorem.
                         (quantidade de decimais alterado para aceitar de 2 a 4 decimais)

                     2 - vCOFINS double 15,2 sim Informar o Valor do COFINS ST

                     3 - qBCProd double 16,4 ? Informar a quantidade vendida, este campo deve ser informado em caso de alíquota específica.

                     4 - vAliqProd double 15,4 ? Informar a alíquota do COFINS ST em reais, este campo deve ser informado em caso de alíquota específica.



                     grupo COFINS ST para Alíquota ad valorem

                     cofinsst_vBC = 100
                     cofinsst_pCOFINS = 0.65
                     cofinsst_qBCProd = 0
                     cofinsst_vAliqProd = 0
                     cofinsst_vCOFINS = 0.65

                     <COFINSST>
                       <vBC>100.00</vBC>
                       <pCOFINS>3.00</pCOFINS>
                       <vCOFINS>3.00</vCOFINS>
                     </COFINSST>


                     Alíquota específica

                     cofinsst_vBC = 0
                     cofinsst_pCOFINS = 0
                     cofinsst_qBCProd = 1000
                     cofinsst_vAliqProd = 0.0076
                     cofinsst_vPIS = 0.76

                     <COFINSST>
                       <qBCProd>1000.0000</qBCProd>
                       <vAliqProd>0.0076</vAliqProd>
                       <vCOFINS>0.76</vCOFINS>
                    </COFINSST>

                    *)

                 //grupo COFINS ST para Alíquota ad valorem
                 if Pesquisa.Produto.FieldByName('PROD_ALIQ_COFINS').AsFloat <= 0  then begin

                    COFINS.vBC     := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                    COFINS.pCOFINS := Pesquisa.Produto.FieldByName('PROD_ALIQ_COFINS').AsFloat;
                    COFINS.vCOFINS := (COFINS.vBC  * COFINS.pCOFINS);

                 end else begin

                    COFINS.qBCProd   := Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_UNITARIO').asfloat; //Pesquisa.Itens_nfe.fieldbyname('INFE_VLR_TOTAL').asfloat;
                    COFINS.vAliqProd :=0;
                    COFINS.vCOFINS   :=0;

                 end;

              end;




          end; // fim do with imposto

        end; // fim do with det.add

        inc(anumiten);
        Pesquisa.Itens_nfe.Next;


      end; // fim do loop de itens


   (************************************************************************************************************************************************************
                                                            TOTALIZAÇÃO DA NOTA FISCAL
   ************************************************************************************************************************************************************)
     Pesquisa.NFe.Edit;
     Pesquisa.nfe.FieldByName('NFE_IMP_VST').asfloat   := Valor_vST;
     Pesquisa.nfe.fieldbyname('NFE_IMP_VBC').asfloat   := Valor_vBC;
     Pesquisa.nfe.fieldbyname('NFE_IMP_VBCST').asfloat := Valor_vBCST;
     Pesquisa.nfe.fieldbyname('NFE_IMP_VICMS').asfloat := (Valor_VICMS);

      // base de calculo do icms
      Total.ICMSTot.vBC := Pesquisa.nfe.fieldbyname('NFE_IMP_VBC').asfloat;
      // valor do icms
      Total.ICMSTot.vICMS := Pesquisa.nfe.fieldbyname('NFE_IMP_VICMS').asfloat;
      // base de calculo st
      Total.ICMSTot.vBCST := Pesquisa.nfe.fieldbyname('NFE_IMP_VBCST').asfloat;
      // valor st
      Total.ICMSTot.vst :=   Pesquisa.nfe.FieldByName('NFE_IMP_VST').asfloat;
      // frete
      Total.ICMSTot.vFrete := Pesquisa.nfe.fieldbyname('NFE_IMP_VFRETE').asfloat;
      // seguro
      Total.ICMSTot.vSeg := Pesquisa.nfe.fieldbyname('NFE_IMP_VSEG').asfloat;
      // outras despesas
      Total.ICMSTot.vOutro := Pesquisa.nfe.fieldbyname('NFE_IMP_VOUTRO').asfloat;
      // ipi
      Total.ICMSTot.vIPI := Pesquisa.nfe.fieldbyname('NFE_IMP_VIPI').asfloat;

      // valor da nota
      ValorTotalNFe:=Pesquisa.nfe.fieldbyname('NFE_IMP_VNF').asfloat + Pesquisa.nfe.FieldByName('NFE_IMP_VST').asfloat + Pesquisa.nfe.FieldByName('NFE_IMP_VDESC').asfloat;
      Total.ICMSTot.vNF := Pesquisa.nfe.fieldbyname('NFE_IMP_VNF').asfloat + Pesquisa.nfe.FieldByName('NFE_IMP_VST').asfloat;
      // valor dos produtos
      Total.ICMSTot.vProd := Pesquisa.nfe.fieldbyname('NFE_IMP_VPROD').asfloat + Pesquisa.nfe.FieldByName('NFE_IMP_VDESC').asfloat;
      // desconto
      Total.ICMSTot.vDesc := Pesquisa.nfe.fieldbyname('NFE_IMP_VDESC').asfloat;
      //valor total dos produtos ibpt
      Total.ICMSTot.vTotTrib:= ValorTotalProdutoIBPT;

       // partilha do icms e fundo de probreza
      Total.ICMSTot.vFCPUFDest   := S_FCPUFDest;
      Total.ICMSTot.vICMSUFDest  := S_ICMSUFDest;
      Total.ICMSTot.vICMSUFRemet := S_ICMSUFRemet;





   (************************************************************************************************************************************************************
                                                            FATURAS DA NOTA FISCAL
   ************************************************************************************************************************************************************)

      Pesquisa.Receber.Open('select * from receber where cod_nfe='+Pesquisa.NFe.FieldByName('cod_nfe').AsString);

      // SE REC_EXBIR_NFE = S  E BOLETO BANCARIO

      if (Pesquisa.Receber.RecordCount > 0) and (Pesquisa.Receber.FieldByName('REC_EXBIR_NFE').AsString = 'S') then begin

        Pesquisa.Receber.First;

        while not Pesquisa.Receber.eof do begin

          Cobr.Fat.nFat  := Pesquisa.NFe.FieldByName('COD_NFE').AsString;
          Cobr.Fat.vOrig := Pesquisa.NFe.FieldByName('NFE_IMP_VNF').asfloat;
          Cobr.Fat.vLiq  := Pesquisa.NFe.FieldByName('NFE_IMP_VNF').asfloat;

          with Cobr.Dup.Add do begin

            nDup  := Pesquisa.Receber.FieldByName('REC_NUM_FATURA').AsString;
            dVenc := Pesquisa.Receber.FieldByName('REC_VENCIMENTO').AsDateTime;
            vDup  := Pesquisa.Receber.FieldByName('REC_VALOR_TOTAL_FATURA').asfloat;

          end;

          Pesquisa.Receber.Next;

        end;
      end;




   (************************************************************************************************************************************************************
                                                            DADOS DA TRANSPORTADORA DA NOTA FISCAL
   ************************************************************************************************************************************************************)



         case Pesquisa.nfe.fieldbyname('NFE_FRETE_POR_CONTA').asinteger of
        0:
          Transp.modFrete := mfContaEmitente;
        1:
          Transp.modFrete := mfContaDestinatario;
        2:
          Transp.modFrete := mfContaTerceiros;
        9:
          Transp.modFrete := mfSemFrete;
      end;




       if Pesquisa.nfe.fieldbyname('NFE_FRETE_POR_CONTA').asinteger = 9 then begin
        Transp.Transporta.xEnder := '';
        Transp.veicTransp.placa := '';
        Transp.veicTransp.UF := '';
        Transp.veicTransp.RNTC := '';
        // X21 - Registro Nacional de Transportador de Carga (ANTT)
      end else begin

        Pesquisa.Transportadora.Open('select * from transportadora where cod_transportadora ='+Pesquisa.NFe.FieldByName('Cod_transportadora').AsString);

        Transp.Transporta.CNPJCPF := Pesquisa.Transportadora.fieldbyname('TRA_CPF_CNPJ').asstring;
        Transp.Transporta.xNome := Trim(Pesquisa.Transportadora.fieldbyname('TRA_RAZAO_SOCIAL').asstring);
        Transp.Transporta.IE := Pesquisa.Transportadora.fieldbyname('TRA_RG_IE').asstring;


        Pesquisa.CEP.Open('select * from cep where cod_cep ='+Pesquisa.Transportadora.FieldByName('Cod_cep').AsString);

        Transp.Transporta.xEnder := Trim(Pesquisa.Transportadora.fieldbyname('CEP_LOGRADOURO').asstring) + ', ' + Trim(Pesquisa.Transportadora.fieldbyname('TRA_NUMERO').asstring);
        Transp.Transporta.xMun := Trim(Pesquisa.Transportadora.fieldbyname('CEP_CIDADE').asstring);
        Transp.Transporta.UF := Pesquisa.Transportadora.fieldbyname('CEP_UF').asstring;

        {Transp.retTransp.vServ := RoundTo(0.0, -2);; // X12 - Valor do Serviço
        Transp.retTransp.vBCRet := RoundTo(0.0, -2);;
        // X13 - BC da Retenção do ICMS
        Transp.retTransp.pICMSRet := RoundTo(0.0, -2);;
        // X14 - Alíquota da Retenção
        Transp.retTransp.vICMSRet := RoundTo(0.0, -2);;
        // X15 - Valor do ICMS Retido
        Transp.retTransp.cfop := ''; // X16 - CFOP (Utilizar Tabela de CFOP)
        Transp.retTransp.cMunFG := 0;
        // X17 - Código do município de ocorrência do fato gerador do ICMS do transporte (Tabela do IBGE)
         }

      end;

      // Dados sobre Volumes Transportados   29/02/2012

      with Transp.Vol.add do begin
        {qVol := Pesquisa.nfe.fieldbyname('vol_qtde').asinteger;
        esp := Pesquisa.nfe.fieldbyname('vol_especie').asstring;
        marca := Pesquisa.nfe.fieldbyname('vol_marca').asstring;
        nVol := Pesquisa.nfe.fieldbyname('vol_numero').asstring;
        pesoL := RoundTo(Pesquisa.nfe.fieldbyname('peso_liquido').asfloat, -3);
        pesoB := RoundTo(Pesquisa.nfe.fieldbyname('peso_bruto').asfloat, -3); }
      end;
    // Informações complementares


     if Length(Pesquisa.NFe.FieldByName('NFE_OBSERVACAO').AsString) > 0  then
       InfAdic.infCpl:=Pesquisa.NFe.FieldByName('NFE_OBSERVACAO').AsString+#13;

     InfAdic.infCpl :=   InfAdic.infCpl + 'Valor aproximado dos tributos R$'+Float2TextEx(ValorTotalProdutoIBPT,2)+ ' ('+Float2TextEx(((ValorTotalProdutoIBPT/ValorTotalNFe)*100), 2)+' %)Fonte IBPT - Versão: '+VersaoIBPIT;

    //Pesquisa.nfe.fieldbyname('inf1').asstring + ';' +
    //                  Pesquisa.nfe.fieldbyname('inf2').asstring + ';' +
   //                   Pesquisa.nfe.fieldbyname('inf3').asstring + ';' +
   //                   Pesquisa.nfe.fieldbyname('inf4').asstring + ';' +
   //                   Pesquisa.nfe.fieldbyname('inf5').asstring + ';';  }
  end;



  Pesquisa.NFe.Post;
  Pesquisa.NFe.ApplyUpdates(0);

  Impressao.Add('TOTALIZADOR BASE ICMS ST');
  Impressao.Add('NFE_IMP_VST:= '+FloatToStr(Valor_vST));
  Impressao.Add('NFE_IMP_VBC:= '+FloatToStr(Valor_vBC));
  Impressao.Add('NFE_IMP_VBCST:= '+FloatToStr(Valor_vBCST));



 // if MicroDesenvolvimento then
    ///Impressao.SaveToFile('C:\Sharing Sistemas\log\erro.txt');

  BD.NFE.NotasFiscais.GerarNFe;

  Result:=True;

FIM:

   { ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
    result := ACBrNFe1.NotasFiscais.Items[0].NomeArq;
    MemoResp.Lines.LoadFromFile
      (PathWithDelim(ACBrNFe1.Configuracoes.Geral.PathSalvar) +
      Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,
      (Length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID) - 44) + 1, 44) +
      '-NFe.xml');
    LoadXML(MemoResp, WebBrowser1);
      }
end;


end.

unit UConst;

interface

uses
   Windows, SysUtils,DBXJSON,Classes,dbClient,SqlExpr;

const
   //Constantes para tipos de arquivos importados
   TIPO001 = '001'; //Tipo Sintegra
   TIPO002 = '002'; //Tipo Sped Contribuição
   TIPO003 = '003'; //Tipo Sped ICMS
   TIPO004 = '004';
   TIPO999 = '999'; //Tipo Master NFe

   //Constantes para transação
   TD001 = 'TD001SINTEGRA';     //Transação para sintegra
   TD002 = 'TD002SPEDCONTRIB';  //Transação para Sped Contribuição
   TD003 = 'TD003SPEDICMS';     //Transação para Sped ICMS
   TD004 = 'TD004';
   TD999 = 'TD999NFE';          //Transação para tipo master


implementation



end.

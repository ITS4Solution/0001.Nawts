unit UConst;

interface

uses
   Windows, SysUtils,DBXJSON,Classes,dbClient,SqlExpr;

const
   //Constantes para tipos de arquivos importados
   TIPO001 = '001'; //Tipo Sintegra
   TIPO002 = '002'; //Tipo Sped Contribui��o
   TIPO003 = '003'; //Tipo Sped ICMS
   TIPO004 = '004';
   TIPO999 = '999'; //Tipo Master NFe

   //Constantes para transa��o
   TD001 = 'TD001SINTEGRA';     //Transa��o para sintegra
   TD002 = 'TD002SPEDCONTRIB';  //Transa��o para Sped Contribui��o
   TD003 = 'TD003SPEDICMS';     //Transa��o para Sped ICMS
   TD004 = 'TD004';
   TD999 = 'TD999NFE';          //Transa��o para tipo master


implementation



end.

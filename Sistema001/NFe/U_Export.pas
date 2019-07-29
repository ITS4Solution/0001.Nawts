unit U_Export;

interface

uses
  cxGrid, Windows;

type
  TExportFile = (efExcel, efHTML, efXML, efTEXT, efPDF, efExcelX);

function GetExportFileName(FileKind: TExportFile; InitialDir: string = '';
  DefaultName: string = ''): string;
procedure ExportGrid(FileKind: TExportFile; oGrid: TcxGrid;
  FileName: string = ''; SaveSelection: Boolean = False;
  ExpandGroups: Boolean = True);

implementation

uses
  Dialogs, SysUtils, Forms, cxGridExportLink, SHELLAPI,
  Controls;

function GetExportFileName(FileKind: TExportFile; InitialDir: string = '';
  DefaultName: string = ''): string;
var
  oSD: TSaveDialog;
begin
  try
    oSD := TSaveDialog.Create(Application);
    oSD.InitialDir := InitialDir;
    oSD.FileName := DefaultName;
    ForceDirectories(oSD.InitialDir);
    case FileKind of
      efExcel:
        begin
          oSD.DefaultExt := 'xlsx';
          oSD.Filter := 'Excel Files|*.xlsx';
        end;
      efHTML:
        begin
          oSD.DefaultExt := 'htm';
          oSD.Filter := 'HTM Files|*.htm;*.html';
        end;
      efXML:
        begin
          oSD.DefaultExt := 'xml';
          oSD.Filter := '*.xml|*.xml';
        end;
      efTEXT:
        begin
          oSD.DefaultExt := 'txt';
          oSD.Filter := '*.txt|*.txt';
        end;
      efPDF:
        begin
          oSD.DefaultExt := 'pdf';
          oSD.Filter := '*.pdf|*.pdf';
        end;
    end;
    if not oSD.Execute(Application.Handle) then
      Exit;
    Result := oSD.FileName;
  finally
    oSD.Free;
  end;
end;

// ..........................................................................................................//
procedure ExportGrid(FileKind: TExportFile; oGrid: TcxGrid;
  FileName: string = ''; SaveSelection: Boolean = False;
  ExpandGroups: Boolean = True);
begin
  case FileKind of
    efExcel:
      ExportGridToExcel(FileName, oGrid, ExpandGroups, not(SaveSelection));
    efHTML:
      ExportGridToHTML(FileName, oGrid, ExpandGroups, not(SaveSelection));
    efXML:
      ExportGridToXML(FileName, oGrid, ExpandGroups, not(SaveSelection));
    efTEXT:
      ExportGridToText(FileName, oGrid, ExpandGroups, not(SaveSelection));
    efExcelX:
      ExportGridToXLSX(FileName, oGrid, ExpandGroups, not(SaveSelection));

    // efPDF   : ExportGrid
  end;
end;
// ..........................................................................................................//

end.

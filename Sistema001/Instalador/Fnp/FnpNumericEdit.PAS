{
  Author:	Fredrik Nordbakke - FNProgramvare © 1997
  E-mail:	fredrik.nordbakke@ostfoldnett.no
  WWW:	  http://www.prodat.no/fnp/delphi.html
}

unit FnpNumericEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Vcl.Graphics,Vcl.Controls, vcl.Forms, vcl.Dialogs,
  vcl.StdCtrls;

type
  TFnpNumericEdit = class(TCustomEdit)
  private
    { Private declarations }
    FAlignment: TAlignment;
    FDecimals: ShortInt;
    FInvalidEntry: TNotifyEvent;
    FMaxValue: Double;
    FMinValue: Double;
    FVersion: String;
    FormatMask: String;
    function GetAsCurrency: Currency;
    function GetAsFloat: Double;
    function GetAsInteger: Integer;
    function GetValue: Double;
    procedure SetAlignment(Value: TAlignment);
    procedure SetAsCurrency(Value: Currency);
    procedure SetAsFloat(Value: Double);
    procedure SetAsInteger(Value: Integer);
    procedure SetDecimals(Value: ShortInt);
    procedure SetMaxValue(Value: Double);
    procedure SetMinValue(Value: Double);
    procedure SetValue(Value: Double);
    procedure SetVersion(Value: String);
    procedure DeleteKey(Key: Word);
    procedure DeleteSelection;
    procedure InvalidEntry;
    procedure SetFormatMask;
    procedure WMCut(var Message: TMessage); message WM_CUT;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
  protected
    { Protected declarations }
    procedure DoEnter; override;
    procedure DoExit; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure CreateParams(var Params: TCreateParams); override;
    property AsCurrency: Currency read GetAsCurrency write SetAsCurrency;
    property AsFloat: Double read GetAsFloat write SetAsFloat;
    property AsInteger: Integer read GetAsInteger write SetAsInteger;
  published
    { Published declarations }
    property AutoSelect;
    property AutoSize;
    property BorderStyle;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HideSelection;
    property MaxLength;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    { New properties }
    property Alignment: TAlignment read FAlignment write SetAlignment default taRightJustify;
    property Decimals: ShortInt read FDecimals write SetDecimals default 2;
    property MaxValue: Double read FMaxValue write SetMaxValue;
    property MinValue: Double read FMinValue write SetMinValue;
    property Value: Double read GetValue write SetValue;
    property Version: String read FVersion write SetVersion stored False;
    property OnInvalidEntry: TNotifyEvent read FInvalidEntry write FInvalidEntry;
  end;

procedure Register;

implementation

uses vcl.Clipbrd;

constructor TFnpNumericEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Width := 73;
  FAlignment := taRightJustify;
  FDecimals := 2;
  FMaxValue := 0;
  FMinValue := 0;
  FVersion := '1.00.01';
  Value := 0;
  Text := FloatToStr(Value);
  SetFormatMask;
end;

procedure TFnpNumericEdit.CreateParams(var Params: TCreateParams);
const
  Alignments: array[TAlignment] of Word = (ES_LEFT, ES_RIGHT, ES_CENTER);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or ES_MULTILINE or Alignments[FAlignment];
end;

procedure TFnpNumericEdit.DoEnter;
begin
  { Need this since AutoSelect has no effect for multi-line controls }
  if AutoSelect and not (csLButtonDown in ControlState) then
    SelectAll;
  inherited DoEnter;
end;

procedure TFnpNumericEdit.DoExit;
begin
  if FMinValue <> FMaxValue then
    if (AsFloat < FMinValue) or (AsFloat > FMaxValue) then
      InvalidEntry;
  inherited DoExit;
end;

procedure TFnpNumericEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if not ReadOnly then        // Added 26.03.97
    if Key = VK_DELETE then begin
      if SelLength > 0 then
        DeleteSelection
      else
        DeleteKey(VK_DELETE);
      { "Eat" the keystroke here to prevent default handling }
      Key := 0;
    end;
  inherited KeyDown(Key, Shift);
end;

procedure TFnpNumericEdit.KeyPress(var Key: Char);
var
  X: Integer;
  N: Boolean;
begin
  inherited KeyPress(Key);
  if ReadOnly then            // Added 26.03.97
    exit;
  { Ctrl C, V and X. }
  if Key in [#3, #22, #24] then
    exit;
  if Key = (FormatSettings.DecimalSeparator) then
    SelLength := 0
  else
    DeleteSelection;
  N := (Pos('-', Text) > 0);
  { Only accept 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -, decimal separator and backspace }
  if Not (Key in ['0'..'9', FormatSettings.DecimalSeparator, '-', #3, #8, #22, #24]) Then
    Key := #0;
  if (Key = FormatSettings.DecimalSeparator) and (FDecimals = 0) then
    { Is decimal separator pressed and no decimals? }
    Key := #0;
  if Key = '-' then begin
    X := SelStart;
    if Pos('-', Text) = 0 then begin
      Text := '-' + Text;
      SelStart := X + 1;
    end else begin
      Text := Copy(Text, 2, Length(Text) - 1);
      SelStart := X - 1;
    end;
    Key := #0;
  end;
  if (SelStart = Length(Text)) and (Key <> #8) and (Key <> FormatSettings.DecimalSeparator) and (FDecimals > 0) then
    Key := #0;
  if Key = FormatSettings.DecimalSeparator then begin
    { Decimal separator is pressed }
    SelStart := Length(Text) - FDecimals;
    Key := #0;
  end;
  if N and (SelStart = 0) then
    { Don't overwrite - }
    SelStart := 1;
  if Key <> #0 then
    if Key = #8 then begin
      if SelLength > 0 then
        DeleteSelection
      else
        DeleteKey(VK_BACK);
      { "Eat" the keystroke here to prevent default handling }
      Key := #0;
    end else if FDecimals = 0 then begin
      { No decimals }
      if (SelStart <= 2) and (Copy(Text, 2, 1) = '0') and N  then begin
        { Overwrite zero when negative }
        SelStart := 1;
        SelLength := 1;
      end else if (SelStart <= 1) and (Copy(Text, 1, 1) = '0') then begin
        { Overwrite zero when not negative }
        SelStart := 0;
        SelLength := 1;
      end;
    end else begin
      { Decimals }
      if (SelStart <= 2) and (Copy(Text, 2, 1) = '0') and N then begin
        { Overwrite zero when negative }
        SelStart := 1;
        SelLength := 1;
      end else if (SelStart <= 1) and (Copy(Text, 1, 1) = '0') then begin
        { Overwrite zero when not negative }
        SelStart := 0;
        SelLength := 1;
      end else if SelStart >= (Length(Text) - FDecimals) then
        { Overwrite decimals }
        SelLength := 1
      else if SelStart < (Length(Text) - FDecimals) - 1 then
        { Overwrite digit if left of decimal point }
        SelLength := 1;
    end;
end;

function TFnpNumericEdit.GetAsCurrency: Currency;
begin
  Result := StrToCurr(Text);
end;

function TFnpNumericEdit.GetAsFloat: Double;
begin
  Result := StrToFloat(Text);
end;

function TFnpNumericEdit.GetAsInteger: Integer;
begin
  Result := Trunc(StrToFloat(Text));
end;

function TFnpNumericEdit.GetValue: Double;
begin
  Result := StrToFloat(Text);
end;

procedure TFnpNumericEdit.SetAsCurrency(Value: Currency);
begin
  Text := FormatFloat(FormatMask, Value);
end;

procedure TFnpNumericEdit.SetAsFloat(Value: Double);
begin
  Text := FormatFloat(FormatMask, Value);
end;

procedure TFnpNumericEdit.SetAsInteger(Value: Integer);
begin
  Text := FormatFloat(FormatMask, Value);
end;

procedure TFnpNumericEdit.SetAlignment(Value: TAlignment);
begin
  if FAlignment <> Value then
  begin
    FAlignment := Value;
    RecreateWnd;
  end;
end;

procedure TFnpNumericEdit.SetDecimals(Value: ShortInt);
begin
  if FDecimals <> Value then
    if Value < 0 then
      Value := 0;
    if Value > 9 then
      Value := 9;
    begin
      FDecimals := Value;
      SetFormatMask;
    end;
end;

procedure TFnpNumericEdit.SetMaxValue(Value: Double);
begin
  if FMaxValue <> Value then begin
    FMaxValue := Value;
  end;
end;

procedure TFnpNumericEdit.SetMinValue(Value: Double);
begin
  if FMinValue <> Value then begin
    FMinValue := Value;
  end;
end;

procedure TFnpNumericEdit.SetValue(Value: Double);
begin
  Text := FormatFloat(FormatMask, Value);
end;

procedure TFnpNumericEdit.DeleteKey(Key: Word);
var
  P: Integer;
  N: Boolean;
begin
  { Always delete character to the left of P }
  if Key = VK_DELETE then
    P := SelStart + 1
  else
    P := SelStart;
  N := (Pos('-', Text) > 0);
  if (P = 0) or (P = Length(Text) + 1) then
    { Can't delete non-existent character }
    exit;
  if FDecimals = 0 then begin
    { No decimals }
    if (P = 2) and (Length(Text) = 2) and N then begin
      { Reset only digit to 0 when negative - no decimals}
      Text := '-0' + Copy(Text, 3, Length(Text) - 2);
      SelStart := 1;
    end else if (P = 1) and (Length(Text) = 1) then begin
      { Reset only digit to 0 - no decimals }
      Text := '0' + Copy(Text, 2, Length(Text) - 1);
      SelStart := 1;
    end else begin
      Text := Copy(Text, 1, P - 1) + Copy(Text, P + 1, Length(Text) - P);
      SelStart := P - 1;
    end
  end else begin
    { Decimals }
    if P > (Length(Text) - FDecimals) then begin
      { Delete decimal - reset to 0 }
      Text := Copy(Text, 1, P - 1) + Copy(Text, P + 1, Length(Text) - P) + '0';
      SelStart := P - 1;
    end else if (P = (Length(Text) - FDecimals)) then
      { Not possible to delete decimal point }
      if Key = VK_DELETE then
        SelStart := (Length(Text) - FDecimals)
      else
        SelStart := (Length(Text) - FDecimals) - 1
    else if (P = 2) and (P = (Length(Text) - FDecimals) - 1) and N then begin
      { Reset only digit to 0 when negative }
      Text := '-0' + Copy(Text, 3, Length(Text) - 2);
      SelStart := 1;
    end else if (P = 1) and (P = (Length(Text) - FDecimals) - 1) then begin
      { Reset only digit to 0 }
      Text := '0' + Copy(Text, 2, Length(Text) - 1);
      SelStart := 1;
    end else if P > 0 then begin
      { Delete digit left of decimal point }
      Text := Copy(Text, 1, P - 1) + Copy(Text, P + 1, Length(Text) - P);
      SelStart := P - 1;
    end;
  end;
end;

procedure TFnpNumericEdit.DeleteSelection;
var
  X: Integer;
  Y: Integer;
begin
  Y := Length(SelText);
  SelStart := SelStart + Y;
  for X:= 1 to Y do begin
    DeleteKey(VK_BACK);
  end;
end;

procedure TFnpNumericEdit.InvalidEntry;
begin
  if assigned(FInvalidEntry) then
    FInvalidEntry(Self);
end;

procedure TFnpNumericEdit.SetFormatMask;
begin
  if FDecimals = 0 then
    FormatMask := '0'
  else
    FormatMask := '0.'+StringOfChar('0', FDecimals);
  Text := FormatFloat(FormatMask, AsFloat);
end;

procedure TFnpNumericEdit.SetVersion(Value: String);
begin
  { This property is read only! }
end;

procedure TFnpNumericEdit.WMCut(var Message: TMessage);
begin
  CopyToClipboard;
  DeleteSelection;
end;

procedure TFnpNumericEdit.WMPaste(var Message: TMessage);
var
  X: integer;
  S: String;
  W: Word;
begin
  DeleteSelection;
  S := Clipboard.AsText;
  for X := 1 to Length(S) do begin
    W := Ord(S[X]);
    Perform(WM_CHAR, W, 0);
  end;
end;

procedure Register;
begin
  RegisterComponents('Samples', [TFnpNumericEdit]);
end;

end.

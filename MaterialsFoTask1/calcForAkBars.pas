unit calcForAkBars;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  ActiveX, ComObj;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
type Tarray=array[1..3] of Double;

function Calc(str: String): Double;
begin
// var x: Tarray;
// var ret : Double;
// var value : string;
// value := '';
// var i, j: integer;
// for i := 1 to Length(str) do
// begin
//   if (str[i] in ['0'..'9']) and (j=0) then
//   begin
//      j := i;
//      While str[j] in ['0'..'9', ','] do
//      begin
//        value := value + str[j];
//        j := j+1;
//      end;
//      x[1] := StrToFloat(value);
//      value := '';
//   end
//   else if j <> 0 then
//   begin
//    j := j-1;
//   end;
//
// end;
//// x[1] := StrToFloat(str);
//  var fl: Double;
//  fl:=x[1];
// Calc := fl;
var
s:string;
var formula:OleVariant;
formula :=CreateOleObject('MSScriptControl.ScriptControl');
formula.Language :='VBScript';
  s := str ; //или в TEdit задавайте нужную формулу
Calc := formula.Eval(s); //вывод результата
end;

{$R *.dfm}
function Validator(var str: String): integer;
begin
  var scop := 0;
  var err, i:integer;
  err := 0;
  for i := 1 to Length(str) do
    begin
      if str[i] = '(' then
        begin
          scop := scop + 1;
        end
      else if str[i] = ')' then
        begin
          scop := scop - 1;
        end
      else if str[i] = ','then
        begin
          err := 2;
        end
      else if (str[i] in ['A'..'z']) or (str[i] in ['А'..'я']) then
      begin
        err := 3 ;
      end;
   end;

   if scop <> 0 then
   begin
     err := 1;
   end;

   Validator := err;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  var str: String;
  str := Edit1.Text;
  var err := Validator(str);
  if err = 0 then
    begin
      Label1.Caption := 'Результат: ' + FloatToStr(Calc(str));
//      inttostr(err);
    end
  else
    begin
      Label1.Caption := 'ERR';
    end  ;
  end;
    //  Label1.Caption := 'Результат: ' + Edit1.Text;

//end;


end.


unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    edtName: TEdit;
    edtValue: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtOther: TEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure edtNameChange(Sender: TObject);
    procedure edtValueChange(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { Private declarations }
    function TemplateToText(Value: String): String;
    procedure DoChange;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  SynCommons, SynMustache;

{$R *.dfm}

function TForm1.TemplateToText(Value: String): String;
var
  A: TSynMustache;
begin
  Result := '';
  A := TSynMustache.Parse(Trim(Value));
  Result := A.RenderJSON('{name:?,value:?,other:?}',[],[edtName.Text,edtValue.Text,edtOther.Text]);
end;

procedure TForm1.DoChange;
begin
  Memo2.Text := TemplateToText(Memo1.Text);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  DoChange;
end;

procedure TForm1.edtNameChange(Sender: TObject);
begin
  DoChange;
end;

procedure TForm1.edtValueChange(Sender: TObject);
begin
  DoChange;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  DoChange;
end;

end.

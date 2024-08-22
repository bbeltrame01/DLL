unit ProjDLL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnSair: TButton;
    btnValidar: TButton;
    edtEntrada: TEdit;
    lblEntrada: TLabel;
    lblResultado: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnValidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

function NumeroPrimo(Value: String): boolean; stdcall; external 'ProjetoDLL.dll';

{$R *.dfm}

procedure TForm1.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btnValidarClick(Sender: TObject);
begin
  edtEntrada.Enabled := False;
  try
    if NumeroPrimo(edtEntrada.Text) then
      lblResultado.Caption := 'É número primo.'
    else
      lblResultado.Caption := 'Não é número primo';
  finally
    edtEntrada.Enabled := True;
    edtEntrada.SetFocus;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.

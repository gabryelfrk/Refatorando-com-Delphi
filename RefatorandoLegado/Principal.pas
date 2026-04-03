unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  DM,
  EntidadeDesaclopada;

type
  TFrmPrincipal = class(TForm)
    BtnLegado: TButton;
    BtnRefatorado: TButton;
    procedure BtnLegadoClick(Sender: TObject);
    procedure BtnRefatoradoClick(Sender: TObject);
  private
    procedure CriarTabelaCliente;
    procedure SalvarCliente;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  FireDAC.Comp.Client,
  RepositorioGenerico;

{$R *.dfm}

procedure TFrmPrincipal.BtnLegadoClick(Sender: TObject);
begin
  CriarTabelaCliente;
  SalvarCliente;
end;

procedure TFrmPrincipal.BtnRefatoradoClick(Sender: TObject);
var
  Repo: TRepository<TCliente>;
  Cliente: TCliente;
begin
  Cliente := TCliente.Create;
  Cliente.Nome  := 'Gabryel';
  Cliente.Email := 'gxf@email.com';

  Repo := TRepository<TCliente>.Create(DMExemplo.Conn);
  Repo.Insert(Cliente);
end;

procedure TFrmPrincipal.CriarTabelaCliente;
begin
  DMExemplo.Conn.ExecSQL(
    'CREATE TABLE IF NOT EXISTS CLIENTE ('   +
    'ID INTEGER PRIMARY KEY AUTOINCREMENT, ' +
    'NOME VARCHAR(100), '                    +
    'EMAIL VARCHAR(100))'
  );
end;

procedure TFrmPrincipal.SalvarCliente;
begin
  with DMExemplo do
  begin
    try
      Query.Connection := DMExemplo.Conn;
      Query.SQL.Text := 'INSERT INTO CLIENTE (NOME, EMAIL) VALUES (:NOME, :EMAIL)';
      Query.ParamByName('NOME').AsString  := 'Gabryel Frk';
      Query.ParamByName('EMAIL').AsString := 'gxf@gmail.com';
      Query.ExecSQL;
    finally
    end;
  end;
end;

end.

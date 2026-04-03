unit EntidadeDesaclopada;

interface

type
  [TTable('CLIENTE')]
  TCliente = class
  private
    [TColumn('NOME')]
    FNome: string;

    [TColumn('EMAIL')]
    FEmail: string;
  public
    property Nome: string read FNome write FNome;
    property Email: string read FEmail write FEmail;
  end;

implementation

end.

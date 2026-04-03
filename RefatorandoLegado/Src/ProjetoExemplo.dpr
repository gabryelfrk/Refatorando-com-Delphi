program ProjetoExemplo;

uses
  Vcl.Forms,
  Principal in '..\Principal.pas' {FrmPrincipal},
  DM in 'DM\DM.pas' {DMExemplo: TDataModule},
  EntidadeDesaclopada in 'EntidadeDesaclopada.pas',
  RepositorioGenerico in 'RepositorioGenerico.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDMExemplo, DMExemplo);
  Application.Run;
end.

program Exercices;

uses
  Vcl.Forms,
  uEx02_Calculatrice in 'uEx02_Calculatrice.pas' {frmEx02_Calculatrice},
  uMenu in 'uMenu.pas' {frmMenu},
  uPresentation in 'uPresentation.pas';

{$R *.res}

begin
  //ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.

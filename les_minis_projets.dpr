program les_minis_projets;

uses
  Vcl.Forms,
  calculatrice in 'calculatrice.pas' {espaceCalculatrice};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TespaceCalculatrice, espaceCalculatrice);
  Application.Run;
end.

unit uPresentation;

interface
var
  Prenom: string;

function H1MenuCaption(const defaultH1:string) : string;


implementation

function H1MenuCaption(const defaultH1:string) : string;
begin

  if Prenom <> '' then
  begin
    Result := 'Salut '+ Prenom;
  end else
  begin
    Result := defaultH1;
  end;

end;

end.

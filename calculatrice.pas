unit calculatrice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.StrUtils;

type
  TespaceCalculatrice = class(TForm)
    Titre: TLabel;
    Header: TPanel;
    Body: TPanel;
    Footer: TPanel;
    EditAffichage: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    ButtonEgal: TButton;
    two: TButton;
    one: TButton;
    three: TButton;
    six: TButton;
    five: TButton;
    four: TButton;
    nine: TButton;
    eight: TButton;
    seven: TButton;
    clear: TButton;
    zero: TButton;
    point: TButton;
    correct: TButton;
    multiple: TButton;
    substract: TButton;
    add: TButton;
    divide: TButton;
    CalculEnCours: TLabel;
    procedure oneClick(Sender: TObject);
    procedure calculClick(Sender: TObject);
    procedure clearClick(Sender: TObject);
    procedure pointClick(Sender: TObject);
    procedure correctClick(Sender: TObject);
    procedure ButtonEgalClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  espaceCalculatrice: TespaceCalculatrice;

implementation

{$R *.dfm}

Var
  ChoixOperationFait: Boolean=False;
  Valeur1, Valeur2, Resultat: Float32;
  TypeOperation : Char;



procedure TespaceCalculatrice.clearClick(Sender: TObject);
begin
  ChoixOperationFait:=False;
  Valeur1:=0;
  Valeur2:=0;
  Resultat:=0;
  TypeOperation:=' ';
  CalculEnCours.Caption:='';
  EditAffichage.Text:='0';
end;

procedure TespaceCalculatrice.correctClick(Sender: TObject);

Var
AffichageLength: Integer;

begin
  AffichageLength:=Length(EditAffichage.Text);

  if EditAffichage.Text='0' then
  begin
      ChoixOperationFait:=False;
      CalculEnCours.Caption:='';
  end else
  begin
    EditAffichage.Text:=LeftStr(EditAffichage.Text,AffichageLength-1);
    if AffichageLength=0 then EditAffichage.Text:='0';
  end;

end;

procedure TespaceCalculatrice.oneClick(Sender: TObject);
begin
  if(EditAffichage.Text='0') or ChoixOperationFait then
  begin
      EditAffichage.Text:=(Sender as TButton).Caption;
      if ChoixOperationFait then ChoixOperationFait:=Not ChoixOperationFait;
  end else
  begin
    EditAffichage.Text:=EditAffichage.Text+(Sender as TButton).Caption;
  end;
end;

procedure TespaceCalculatrice.pointClick(Sender: TObject);
begin
  if Pos(',',EditAffichage.Text,1)=0 then
  begin
      EditAffichage.Text:=EditAffichage.Text+point.Caption;
  end;
end;

procedure TespaceCalculatrice.ButtonEgalClick(Sender: TObject);
begin
  if TypeOperation=#0 then Exit;

  Valeur2:=StrToFloat(EditAffichage.Text);

  case TypeOperation of
    '/': Resultat:=Valeur1/Valeur2;
    'x': Resultat:=Valeur1*Valeur2;
    '-': Resultat:=Valeur1-Valeur2;
    '+': Resultat:=Valeur1+Valeur2;
  end;

  EditAffichage.Text:=Format('%.3f',[Resultat]);
  Valeur1:=StrToFloat(EditAffichage.Text);
  Valeur2:=0;
  TypeOperation:='=';
  ChoixOperationFait:=True;

end;

procedure TespaceCalculatrice.calculClick(Sender: TObject);
begin
  if Resultat<>0 then ButtonEgal.OnClick(Sender);

  TypeOperation:=(Sender as TButton).Caption[1];
  CalculEnCours.Caption:=TypeOperation;
  ChoixOperationFait:=True;
  Valeur1:=StrToFloat(EditAffichage.Text);

end;

end.

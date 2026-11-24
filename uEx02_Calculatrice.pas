unit uEx02_Calculatrice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.StrUtils;

type
  TfrmEx02_Calculatrice = class(TForm)
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
    FChoixOperationFait: Boolean;
    FValeur1, FValeur2, FResultat: Float32;
    FTypeOperation : Char;
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmEx02_Calculatrice: TfrmEx02_Calculatrice;

implementation

{$R *.dfm}


procedure TfrmEx02_Calculatrice.clearClick(Sender: TObject);
begin
  FChoixOperationFait:=False;
  FValeur1:=0;
  FValeur2:=0;
  FResultat:=0;
  FTypeOperation:=' ';
  CalculEnCours.Caption:='';
  EditAffichage.Text:='0';
end;

procedure TfrmEx02_Calculatrice.correctClick(Sender: TObject);

Var
AffichageLength: Integer;

begin
  AffichageLength:=Length(EditAffichage.Text);

  if EditAffichage.Text='0' then
  begin
      FChoixOperationFait:=False;
      CalculEnCours.Caption:='';
  end else
  begin
    EditAffichage.Text:=LeftStr(EditAffichage.Text,AffichageLength-1);
    if AffichageLength=0 then EditAffichage.Text:='0';
  end;

end;

procedure TfrmEx02_Calculatrice.oneClick(Sender: TObject);
begin
  if(EditAffichage.Text='0') or FChoixOperationFait then
  begin
      EditAffichage.Text:=(Sender as TButton).Caption;
      if FChoixOperationFait then FChoixOperationFait:=Not FChoixOperationFait;
  end else
  begin
    EditAffichage.Text:=EditAffichage.Text+(Sender as TButton).Caption;
  end;
end;

procedure TfrmEx02_Calculatrice.pointClick(Sender: TObject);
begin
  if Pos(',',EditAffichage.Text,1)=0 then
  begin
      EditAffichage.Text:=EditAffichage.Text+point.Caption;
  end;
end;

procedure TfrmEx02_Calculatrice.ButtonEgalClick(Sender: TObject);
begin
  if FTypeOperation=#0 then Exit;

  FValeur2:=StrToFloat(EditAffichage.Text);

  case FTypeOperation of
    '/': FResultat:=FValeur1/FValeur2;
    'x': FResultat:=FValeur1*FValeur2;
    '-': FResultat:=FValeur1-FValeur2;
    '+': FResultat:=FValeur1+FValeur2;
  end;

  EditAffichage.Text:=Format('%.3f',[FResultat]);
  FValeur1:=StrToFloat(EditAffichage.Text);
  FValeur2:=0;
  FTypeOperation:='=';
  FChoixOperationFait:=True;

end;

procedure TfrmEx02_Calculatrice.calculClick(Sender: TObject);
begin
  if FResultat<>0 then ButtonEgal.OnClick(Sender);

  FTypeOperation:=(Sender as TButton).Caption[1];
  CalculEnCours.Caption:=FTypeOperation;
  FChoixOperationFait:=True;
  FValeur1:=StrToFloat(EditAffichage.Text);

end;

end.

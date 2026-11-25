unit uEx02_Calculatrice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.StrUtils;

type
  TfrmEx02_Calculatrice = class(TForm)
    LabelH1Calculatrice: TLabel;
    PanelHeader: TPanel;
    PanelBody: TPanel;
    PanelFooter: TPanel;
    EditAffichage: TEdit;
    PanelSeparateurHeader: TPanel;
    PanelSeparateurFooter: TPanel;
    ButtonEgal: TButton;
    ButtonDeux: TButton;
    ButtonUn: TButton;
    ButtonTrois: TButton;
    ButtonSix: TButton;
    ButtonCinq: TButton;
    ButtonQuatre: TButton;
    ButtonNeuf: TButton;
    ButtonHuit: TButton;
    ButtonSept: TButton;
    ButtonReset: TButton;
    ButtonZero: TButton;
    ButtonVirgule: TButton;
    ButtonCorriger: TButton;
    ButtonMultiplier: TButton;
    ButtonSoustraire: TButton;
    ButtonAdditionner: TButton;
    ButtonDiviser: TButton;
    LabelSymboleDuCalculEnCours: TLabel;
    PanelNombres: TPanel;
    procedure ButtonUnClick(Sender: TObject);
    procedure calculClick(Sender: TObject);
    procedure ButtonResetClick(Sender: TObject);
    procedure ButtonVirguleClick(Sender: TObject);
    procedure ButtonCorrigerClick(Sender: TObject);
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


procedure TfrmEx02_Calculatrice.ButtonResetClick(Sender: TObject);
begin
  FChoixOperationFait:=False;
  FValeur1:=0;
  FValeur2:=0;
  FResultat:=0;
  FTypeOperation:=' ';
  LabelSymboleDuCalculEnCours.Caption:='';
  EditAffichage.Text:='0';
end;

procedure TfrmEx02_Calculatrice.ButtonCorrigerClick(Sender: TObject);

Var
AffichageLength: Integer;

begin
  AffichageLength:=Length(EditAffichage.Text);

  if EditAffichage.Text='0' then
  begin
      FChoixOperationFait:=False;
      LabelSymboleDuCalculEnCours.Caption:='';
  end else
  begin
    EditAffichage.Text:=LeftStr(EditAffichage.Text,AffichageLength-1);
    if AffichageLength=0 then EditAffichage.Text:='0';
  end;

end;

procedure TfrmEx02_Calculatrice.ButtonUnClick(Sender: TObject);
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

procedure TfrmEx02_Calculatrice.ButtonVirguleClick(Sender: TObject);
begin
  if Pos(',',EditAffichage.Text,1)=0 then
  begin
      EditAffichage.Text:=EditAffichage.Text+ButtonVirgule.Caption;
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
  LabelSymboleDuCalculEnCours.Caption:=FTypeOperation;
  FChoixOperationFait:=True;
  FValeur1:=StrToFloat(EditAffichage.Text);

end;

end.

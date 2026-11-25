unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMenu = class(TForm)
    ButtonCalculatrice: TButton;
    LabelH1Menu: TLabel;
    LabelH2Menu: TLabel;
    PanelPresentation: TPanel;
    PanelMenu: TPanel;
    LabelH2Presentation: TLabel;
    EditPresentation: TEdit;
    ButtonPresentation: TButton;
    procedure ButtonCalculatriceClick(Sender: TObject);
    procedure ButtonPresentationClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    var
    FDefaultH1Caption: string;
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses
  uEx02_Calculatrice, uPresentation;

//const PRENOM = 'Ersine';

{$R *.dfm}

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
  FDefaultH1Caption := LabelH1Menu.Caption;
end;

procedure TfrmMenu.ButtonCalculatriceClick(Sender: TObject);
begin

  var
  Calculatrice: TfrmEx02_Calculatrice;
  Calculatrice := TfrmEx02_Calculatrice.Create(Self);

  try
    Calculatrice.ShowModal;
  finally
    Calculatrice.Free;
  end;
end;

//procedure TfrmMenu.BtnPresentationClick(Sender: TObject);
//begin
//  Prenom:='Test';
//end;

procedure TfrmMenu.ButtonPresentationClick(Sender: TObject);
begin
  uPresentation.Prenom := Trim(EditPresentation.Text);
  LabelH1Menu.Caption := H1MenuCaption(FdefaultH1Caption);
end;

end.

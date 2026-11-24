unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMenu = class(TForm)
    BtnCalculatrice: TButton;
    LabelH1Menu: TLabel;
    LabelH2Menu: TLabel;
    procedure BtnCalculatriceClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmMenu: TfrmMenu;
  //frmEx02_Calculatrice: TfrmEx02_Calculatrice;

implementation

uses
  uEx02_Calculatrice;

{$R *.dfm}

procedure TfrmMenu.BtnCalculatriceClick(Sender: TObject);
begin
  //frmEx02_Calculatrice.Show;
  //frmEx02_Calculatrice.ShowModal;
  var
  Calculatrice: TfrmEx02_Calculatrice;
  Calculatrice := TfrmEx02_Calculatrice.Create(Self);
  //Version fuite de mémoire
  //Calculatrice := TfrmEx02_Calculatrice.Create(Nil);

  try
    Calculatrice.ShowModal;
  finally
    Calculatrice.Free;
  end;
end;

end.

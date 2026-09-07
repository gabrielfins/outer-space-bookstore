unit Sobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_Sobre = class(TForm)
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Sobre: Tfrm_Sobre;

implementation
uses Menu;
{$R *.dfm}

procedure Tfrm_Sobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frm_Sobre.Hide;
frm_Menu.Show;
frm_Sobre.Close;
end;

procedure Tfrm_Sobre.Image1Click(Sender: TObject);
begin
Application.MessageBox('Não faz mais nada, apenas leia. Não tem easter egg aqui. Avalie a gente na outra tela.', 'É isto!')
end;

end.

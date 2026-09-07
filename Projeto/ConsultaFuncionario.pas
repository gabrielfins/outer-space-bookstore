unit ConsultaFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Mask;

type
  Tfrm_ConsultaFuncionario2 = class(TForm)
    Image1: TImage;
    lbl_consultar: TLabel;
    Image2: TImage;
    Image3: TImage;
    RadioGroup1: TRadioGroup;
    DBGrid1: TDBGrid;
    edt_Consultar: TMaskEdit;
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaFuncionario2: Tfrm_ConsultaFuncionario2;
  valor: string;
implementation
uses Conetion, CadastroFuncionarios;
{$R *.dfm}

procedure Tfrm_ConsultaFuncionario2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
edt_Consultar.Text := '';
dm.Funcionarios2.Filtered:= False;
dm.Funcionarios2.FilterOptions:= [foCaseInsensitive];
dm.Funcionarios2.Filter:= '' + valor + ' like ' + QuotedStr(edt_Consultar.Text + '%');
dm.Funcionarios2.Filtered:= True;
end;

procedure Tfrm_ConsultaFuncionario2.FormCreate(Sender: TObject);
begin
RadioGroup1.ItemIndex := 0;
end;

procedure Tfrm_ConsultaFuncionario2.Image2Click(Sender: TObject);
begin
frm_CadastroFuncionarios.Show;
end;

procedure Tfrm_ConsultaFuncionario2.Image3Click(Sender: TObject);
begin
dm.Funcionarios2.Filtered:= False;
dm.Funcionarios2.FilterOptions:= [foCaseInsensitive];
dm.Funcionarios2.Filter:= '' + valor + ' like ' + QuotedStr(edt_Consultar.Text + '%');
dm.Funcionarios2.Filtered:= True;
end;

procedure Tfrm_ConsultaFuncionario2.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
   begin
     valor:= 'nome';
     lbl_consultar.Caption:= 'Nome do Funcionário';
     edt_Consultar.EditMask := '';
     edt_Consultar.Text := '';
   end;

  if RadioGroup1.ItemIndex=1 then
   begin
     valor:= 'apelido';
     lbl_consultar.Caption:= 'Apelido do Funcionário';
     edt_Consultar.EditMask := '';
     edt_Consultar.Text := '';
   end;

  if radiogroup1.ItemIndex=2 then
   begin
   valor:= 'cpf';
   lbl_consultar.Caption:= 'CPF do Funcionário';
   edt_Consultar.EditMask := '000.000.000-00';
   edt_Consultar.Text := '';
   end;
end;

end.

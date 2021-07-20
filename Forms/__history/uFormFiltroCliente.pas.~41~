unit uFormFiltroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, uFormCadastroCliente;

type
  TFormFiltroCliente = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    edtFantasia: TEdit;
    edtCnpj: TEdit;
    edtCodigo: TEdit;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    fdQryFiltroID_CLIENTE: TIntegerField;
    fdQryFiltroRAZAO_SOCIAL: TWideStringField;
    fdQryFiltroFANTAZIA: TWideStringField;
    fdQryFiltroCPF_CNPJ: TWideStringField;
    fdQryFiltroTIPO_FJ: TWideStringField;
    fdQryFiltroNOME: TWideStringField;
    fdQryFiltroEMAIL: TWideStringField;
    fdQryFiltroSITE: TWideStringField;
    fdQryFiltroENDERECO: TWideStringField;
    fdQryFiltroCOMPLEMENTO: TWideStringField;
    fdQryFiltroNUMERO: TWideStringField;
    fdQryFiltroBAIRRO: TWideStringField;
    fdQryFiltroIE: TWideStringField;
    fdQryFiltroIM: TWideStringField;
    fdQryFiltroDT_EXCLUIDO: TDateField;
    fdQryFiltroID_CIDADE: TIntegerField;
    fdQryFiltroID_ESTADO: TIntegerField;
    procedure btnFiltroClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroCliente: TFormFiltroCliente;

implementation

{$R *.dfm}

{ TFormFiltroCliente }

procedure TFormFiltroCliente.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroCliente.Button2Click(Sender: TObject);
begin
  inherited;
    FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
    FormCadastroCliente.fdQryCadastro.Insert;
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormFiltroCliente.Button3Click(Sender: TObject);
begin
  inherited;
    ValidaQueryVazia;
    FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
    FormCadastroCliente.fdQryCadastro.Locate('ID_CLIENTE', fdQryFiltroID_CLIENTE.AsInteger, []);
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormFiltroCliente.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT * FROM CLIENTE');
  fdQryFiltro.SQL.Add('WHERE 1=1');

  if Trim (edtFiltro.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(RAZAO_SOCIAL)) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text)) + '%'));
  end;

  if Trim(edtFantasia.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(FANTAZIA)) LIKE' + QuotedStr('%' + UpperCase(Trim(edtFantasia.Text)) + '%'));
  end;

  if Trim(edtCnpj.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM( REPLACE( REPLACE( REPLACE(CPF_CNPJ, ''.'', ''''),''-'', ''''),''/'', ''''))) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtCnpj.Text)) + '%'));
  end;

  if StrToIntDef(edtCodigo.Text, 0) > 0 then
  begin
    fdQryFiltro.SQL.Add(' AND ID_CLIENTE = ' + edtCodigo.Text)
  end;


  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;

end;

end.

unit uFormMain;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, uFormCadastroCidade,
  uFormCadastroCliente, uFormCadastroEstado, uFormFiltroCliente,
  uFormCadastroFornecedor, uFormFiltroFornecedores, uFormFiltroProdutos,
  uFormCadastroProduto;

type
  TFormMain = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvPage2: TAdvPage;
    AdvPage3: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvToolBar3: TAdvToolBar;
    AdvToolBar4: TAdvToolBar;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    btnFiltroClientes: TAdvGlowButton;
    btnCadastroFornecedor: TAdvGlowButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    btnFornecedor: TAdvGlowButton;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    btnProdutos: TAdvGlowButton;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    btnCadastroProduto: TAdvGlowButton;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvPage4: TAdvPage;
    AdvToolBar5: TAdvToolBar;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure btnCadastroFornecedorClick(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnCadastroProdutoClick(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure btnFiltroClientesClick(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses uFormCadastroVendas, uBiblioteca;


procedure TFormMain.AdvGlowButton1Click(Sender: TObject);
begin
  ShowModalForm(TFormCadastroCidade, FormCadastroCidade); //existem dois metodos
end;

procedure TFormMain.AdvGlowButton2Click(Sender: TObject);
begin
  FormCadastroEstado := TFormCadastroEstado.Create(Self); //existem dois metodos
  try
    FormCadastroEstado.ShowModal;
  finally
    FreeAndNil(FormCadastroEstado);
  end;
end;

procedure TFormMain.AdvGlowButton3Click(Sender: TObject);
begin
  ShowModalForm(TFormCadastroCliente, FormCadastroCliente);
end;

procedure TFormMain.AdvGlowButton6Click(Sender: TObject);
begin
  FormCadastroVenda := TFormCadastroVenda.Create(Self);
  try
    FormCadastroVenda.ShowModal;
  finally
    FreeAndNil(FormCadastroVenda);
  end;
end;

procedure TFormMain.btnCadastroFornecedorClick(Sender: TObject);
begin
  FormCadastroFornecedor := TFormCadastroFornecedor.Create(Self);
  try
    FormCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(FormCadastroFornecedor);
  end;
end;

procedure TFormMain.btnCadastroProdutoClick(Sender: TObject);
begin
  FormCadastroProduto := TFormCadastroProduto.Create(Self);
  try
    FormCadastroProduto.ShowModal;
  finally
    FreeAndNil(FormCadastroProduto);
  end;
end;

procedure TFormMain.btnFiltroClientesClick(Sender: TObject);
begin
  ShowForm(TFormFiltroCliente, FormFiltroCliente);  //existem dois metodos
end;

procedure TFormMain.btnFornecedorClick(Sender: TObject);
begin
  FormFiltroFornecedores := TFormFiltroFornecedores.Create(Self); //existem dois metodos
  FormFiltroFornecedores.Show;
end;

procedure TFormMain.btnProdutosClick(Sender: TObject);
begin
  FormFiltroProdutos := TFormFiltroProdutos.Create(Self);
  FormFiltroProdutos.Show;
end;

end.

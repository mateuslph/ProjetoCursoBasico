unit uBiblioteca;

interface

uses IniFiles, System.SysUtils, Vcl.Forms, FireDAC.Comp.Client, System.Classes;

procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: string);
procedure ShowModalForm(pClass: TComponentClass; pForm: TForm);
procedure ShowForm(pClass: TComponentClass; pForm: TForm);

implementation

procedure SetValorIni(pLocal, pSessao, pSubSessao: string; pValor: string);
var
  vArquivo: TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);
  vArquivo.WriteString(pSessao, pSubSessao, pValor);
  vArquivo.Free;
end;

function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
var
  vArquivo: TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);
  Result := vArquivo.ReadString(pSessao, pSubSessao, '');
  vArquivo.Free;
end;

procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: string);
begin
  pFDQuery.Close;
  if Trim(pSQL) <> '' then
  begin
    pFDQuery.SQL.Clear;
    pFDQuery.SQL.Text := pSQL;
  end;

  pFDQuery.Open();
  pFDQuery.FetchAll;
end;

procedure ShowModalForm(pClass: TComponentClass; pForm: TForm);
begin
  try
    Application.CreateForm(pClass, pForm);// esses m�todos de bibliotecas nao
    pForm.ShowModal;    //sao criados como em form com shift ctrl c, sao criados
  finally               //manualmente para quando fiser manutencao do software
    FreeAndNil(pForm);  //evitar reprogramar de botao por botao
  end;
end;

procedure ShowForm(pClass: TComponentClass; pForm: TForm);
begin
  try
    Application.CreateForm(pClass, pForm); //esse para o show, o anterior era para
    pForm.Show;         //showmodal
  finally
                       //nao precisa finalizar pois esta sendo no formpai
  end;
end;

end.

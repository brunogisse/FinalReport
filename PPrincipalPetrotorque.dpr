 program PPrincipalPetrotorque;

uses
  Vcl.Forms,
  UPrincipalPetrotorque in 'UPrincipalPetrotorque.pas' {frmMenu},
  UCorretores in 'UCorretores.pas' {frmCorretores},
  Uposto in 'Uposto.pas' {frmPosto},
  UMotorista in 'UMotorista.pas' {frmMotorista},
  URepresentante in 'URepresentante.pas' {frmRepresentante},
  UProduto in 'UProduto.pas' {frmProdutos},
  UUsinas in 'UUsinas.pas' {frmUsinas},
  UVendaPosto in 'UVendaPosto.pas' {frmVendaPostos},
  UGerarParcelas in 'UGerarParcelas.pas' {frmGerarParcelas},
  UPesquisaVendas in 'UPesquisaVendas.pas' {frmPesquisaVendas},
  UpagarParcelas in 'UpagarParcelas.pas' {frmPagarParcelas},
  URelatorioVendas in 'URelatorioVendas.pas' {frmRelatorioVenda},
  UselecionarUsinaEproduto in 'UselecionarUsinaEproduto.pas' {frmSelecionarEstoqueProduto},
  UdefinirEstoque in 'UdefinirEstoque.pas' {frmDefinirEstoque},
  UReverterPagamentos in 'UReverterPagamentos.pas' {frmReverterPagamentos},
  URelatorioMotorista in 'URelatorioMotorista.pas' {frmRelatorioMotorista},
  UCompraUsina in 'UCompraUsina.pas' {frmCompraUsina},
  UConverterFloat in 'UConverterFloat.pas',
  UMovimentoEstoqueUsina in 'UMovimentoEstoqueUsina.pas' {frmMovimentoEstoqueUsina},
  URelatorioCorretor in 'URelatorioCorretor.pas' {frmRelatorioCorretor},
  UEditarParcelas in 'UEditarParcelas.pas' {frmEditarParcelas},
  ULogin in 'ULogin.pas' {frmLogin},
  UdataModule in 'UdataModule.pas' {dm: TDataModule},
  UCadastroUsuario in 'UCadastroUsuario.pas' {frmCadastroUsuario},
  UbackUp in 'UbackUp.pas' {frmBackUp},
  UrelatorioCliente in 'UrelatorioCliente.pas' {frmRelatorioClientes},
  UTransferenciaEstoque in 'UTransferenciaEstoque.pas' {frmTransferencia},
  UAlterarQtdeParcelas in 'UAlterarQtdeParcelas.pas' {frmAlterarQtdeParcelas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  frmLogin := TfrmLogin.Create(nil);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(Tdm, dm);

  frmLogin.ShowModal;

  frmLogin.Hide;
  frmLogin.Free;

  Application.Run;
end.

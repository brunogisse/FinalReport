unit UVendaPosto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, MaskUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Comp.Client, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, frxClass, frxDBSet, System.UITypes;

type
  TdbGridPadrao = class(TDBGrid);
  TfrmVendaPostos = class(TForm)
    tcVendaPosto: TFDTransaction;
    qryVendaPosto: TFDQuery;
    dsVendaPosto: TDataSource;
    qryCorretor: TFDQuery;
    qryMotorista: TFDQuery;
    qryPosto: TFDQuery;
    qryProduto: TFDQuery;
    qryRepresentante: TFDQuery;
    qryUsina: TFDQuery;
    dsCorretor: TDataSource;
    dsMotorista: TDataSource;
    dsPosto: TDataSource;
    dsProduto: TDataSource;
    dsRepresentante: TDataSource;
    dsUsina: TDataSource;
    qryCorretorCORRETORID: TIntegerField;
    qryCorretorNOME: TStringField;
    qryCorretorCPF: TStringField;
    qryCorretorCIDADE: TStringField;
    qryMotoristaMOTORISTAID: TIntegerField;
    qryMotoristaNOME: TStringField;
    qryMotoristaCIDADE: TStringField;
    qryMotoristaCPF: TStringField;
    qryProdutoPRODUTOID: TIntegerField;
    qryProdutoDESCRICAO: TStringField;
    qryRepresentanteREPRESENTANTEID: TIntegerField;
    qryRepresentanteNOME: TStringField;
    qryRepresentanteCIDADE: TStringField;
    qryRepresentanteCNPJ: TStringField;
    qryPostoPOSTOID: TIntegerField;
    qryPostoNOME_FANTASIA: TStringField;
    qryPostoRAZAO_SOCIAL: TStringField;
    qryPostoCNPJ: TStringField;
    shapePrincipal: TShape;
    painelFundoSecundario: TPanel;
    PainelTOPO: TPanel;
    painelCENTRAL: TPanel;
    painelBOTTOM: TPanel;
    ImgPrincipal: TImage;
    labelPosto: TLabel;
    labelTituloEdits1: TLabel;
    painelUnderline1: TPanel;
    labelRepresentante: TLabel;
    labelProduto: TLabel;
    labelVolume: TLabel;
    labelUsina: TLabel;
    labelEstoque: TLabel;
    painelUnderlineNF: TPanel;
    labelTituloEditsNF: TLabel;
    labelNF: TLabel;
    labelEmissaoNF: TLabel;
    labelValorNF: TLabel;
    painelUnderlineFreteCorretagem: TPanel;
    labelCorretorFrete: TLabel;
    labelMotorista: TLabel;
    labelTaxaFrete: TLabel;
    labelTotalFrete: TLabel;
    labelCorretor: TLabel;
    labelCorretagem: TLabel;
    labelTotalCorretagem: TLabel;
    labelValorCombustivel: TLabel;
    gridVendaPosto: TDBGrid;
    editPosto: TEdit;
    editProduto: TEdit;
    editUsina: TEdit;
    editMotorista: TEdit;
    editCorretor: TEdit;
    editRepresentante: TEdit;
    painelBotoes: TPanel;
    painelBtnNovo: TPanel;
    btnNovo: TSpeedButton;
    PainelCancelar: TPanel;
    btnCancelar: TSpeedButton;
    painelSalvar: TPanel;
    btnSalvar: TSpeedButton;
    PainelExcluir: TPanel;
    btnExcluir: TSpeedButton;
    painelEditar: TPanel;
    btnEditar: TSpeedButton;
    ImgFecharTela: TImage;
    dateEmissaoNF: TDateTimePicker;
    editEstoque: TEdit;
    editNF: TEdit;
    EditValorNF: TEdit;
    editTaxaFrete: TEdit;
    editTaxaCorretagem: TEdit;
    editTotalCorretagem: TEdit;
    editVolume: TEdit;
    editValorCombustivel: TEdit;
    editTotalFrete: TEdit;
    LabelAlerta: TLabel;
    qryEstoqueUsina: TFDQuery;
    dsEstoqueUsina: TDataSource;
    qryEstoqueUsinaESTOQUEID: TFDAutoIncField;
    qryEstoqueUsinaUSINAID: TIntegerField;
    qryEstoqueUsinaPRODUTOID: TIntegerField;
    qryUsinaUSINAID: TIntegerField;
    qryUsinaRAZAO_SOCIAL: TStringField;
    qryUsinaNOME_FANTASIA: TStringField;
    qryUsinaENDERECO: TStringField;
    qryUsinaBAIRRO: TStringField;
    qryUsinaCIDADE: TStringField;
    qryUsinaUF: TStringField;
    qryUsinaTELEFONE: TStringField;
    qryVendaPostoVENDAID: TFDAutoIncField;
    qryVendaPostoREPRESENTANTEID: TIntegerField;
    qryVendaPostoPOSTOID: TIntegerField;
    qryVendaPostoPRODUTOID: TIntegerField;
    qryVendaPostoMOTORISTAID: TIntegerField;
    qryVendaPostoCORRETORID: TIntegerField;
    qryVendaPostoUSINAID: TIntegerField;
    qryVendaPostoNF: TIntegerField;
    qryVendaPostoVALOR_NF: TFMTBCDField;
    qryVendaPostoDATA_EMISSAO_NF: TDateField;
    qryVendaPostoVENCIMENTO_NF_ATUAL: TDateField;
    qryVendaPostoVOLUME: TFMTBCDField;
    qryVendaPostoTAXA_FRETE: TBCDField;
    qryVendaPostoVALOR_TOTAL_FRETE: TFMTBCDField;
    qryVendaPostoTAXA_CORRETAGEM: TBCDField;
    qryVendaPostoVALOR_TOTAL_CORRETAGEM: TFMTBCDField;
    qryVendaPostoSTATUS: TStringField;
    qryVendaPostoATUALIZAR_PARCELA: TIntegerField;
    qryVendaPostoPARCELAS_GERADAS: TStringField;
    qryVendaPostoTOTAL_NF_RECEBIDO: TFMTBCDField;
    qryVendaPostoVOLUME_TOTAL_RETIRADO: TFMTBCDField;
    qryVendaPostoVALOR_RECEBIDO_MES: TFMTBCDField;
    qryVendaPostoVOLUME_RECEBIDO_MES: TFMTBCDField;
    qryVendaPostoCORRETOR: TStringField;
    qryVendaPostoMOTORISTA: TStringField;
    qryVendaPostoPOSTO: TStringField;
    qryVendaPostoPRODUTO: TStringField;
    qryVendaPostoREPRESENTANTE: TStringField;
    qryVendaPostoUSINA: TStringField;
    qryEstoqueUsinaESTOQUE: TFMTBCDField;
    PainelbtnGerarParcelas: TPanel;
    PainelParcelas: TPanel;
    btnParcelas: TSpeedButton;
    qryEstoqueUsinaREPRESENTANTEID: TIntegerField;
    qryVendaPostoESTOQUEID: TIntegerField;
    qryVendaPostoESTOQUE_ID_VENDAS: TIntegerField;
    qryVendaPostoVALOR_COMBUSTIVEL: TFMTBCDField;
    qryConfirmarNF: TFDQuery;
    dsConfirmarNF: TDataSource;
    qryConfirmarNFVENDAID: TIntegerField;
    qryConfirmarNFNF: TIntegerField;
    qryVendaPostoSTATUS_FRETE: TStringField;
    qryVendaPostoSTATUS_CORRETAGEM: TStringField;
    qryVendaPostoSTATUS_PGTO_CLIENTE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure editRepresentanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editPostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editUsinaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editMotoristaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editCorretorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImgFecharTelaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure editTaxaFreteChange(Sender: TObject);
    procedure editVolumeChange(Sender: TObject);
    procedure editTaxaCorretagemChange(Sender: TObject);
    procedure editValorCombustivelChange(Sender: TObject);
    procedure editVolumeExit(Sender: TObject);
    procedure editTaxaCorretagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editVolumeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editValorCombustivelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editNFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure editTaxaFreteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridVendaPostoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure editRepresentanteKeyPress(Sender: TObject; var Key: Char);
    procedure editPostoKeyPress(Sender: TObject; var Key: Char);
    procedure editProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure editVolumeKeyPress(Sender: TObject; var Key: Char);
    procedure editUsinaKeyPress(Sender: TObject; var Key: Char);
    procedure editNFKeyPress(Sender: TObject; var Key: Char);
    procedure editMotoristaKeyPress(Sender: TObject; var Key: Char);
    procedure editTaxaFreteKeyPress(Sender: TObject; var Key: Char);
    procedure editCorretorKeyPress(Sender: TObject; var Key: Char);
    procedure editTaxaCorretagemKeyPress(Sender: TObject; var Key: Char);
    procedure btnParcelasClick(Sender: TObject);
    procedure dsVendaPostoDataChange(Sender: TObject; Field: TField);
    procedure qryVendaPostoBeforePost(DataSet: TDataSet);
    procedure gridVendaPostoColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure editNFExit(Sender: TObject);
    procedure editJurosChange(Sender: TObject);
  private
    { Private declarations }

    procedure ConfigurarEnables(status : integer);
    procedure SalvarRegistro;
    procedure AtualizarQuerryes;
    procedure calcularFrete;
    procedure calcularCorretagem;
    procedure calcularValorNF;
    procedure LimparCampos;
    procedure EditarVenda;
    procedure VerificarSeAtualizaParcela(status : string);
    procedure gravarCommitRetaining;
    procedure abrirTelaDeParcelamento;
    procedure EditarEstoqueUsina(Action : string; usina, produto, estoqueid : integer);
    procedure definirTamanhoDaLinhaDaGrid;
    procedure VerificarAlerta;


    function VerificarCamposVazios( campos : string) : string;

  public
    { Public declarations }

    var ParcelasAtualizadas, ParcelasGeradas : string;
  end;

var
  frmVendaPostos: TfrmVendaPostos;

implementation

{$R *.dfm}



uses UPrincipalPetrotorque, URepresentante, Uposto, UProduto, UUsinas,
  UCorretores, UMotorista, UConverterFloat, UGerarParcelas,
  UselecionarUsinaEproduto;

procedure TfrmVendaPostos.definirTamanhoDaLinhaDaGrid;
begin

  //Define o tamanho de cada linha do DBgrid ap�s ativar a QUERY
  //TdbGridPadrao(gridVendaPosto).DefaultRowHeight := 25;
 // TdbGridPadrao(gridVendaPosto).ClientHeight := ( 25 * TdbGridPadrao(gridVendaPosto).RowCount ) + 25;

end;


procedure TfrmVendaPostos.abrirTelaDeParcelamento;
begin
  try
    Application.CreateForm(TfrmGerarParcelas, frmGerarParcelas);
    frmGerarParcelas.ShowModal;
  finally
     FreeAndNil(frmGerarParcelas);
  end;


  if qryVendaPosto['ATUALIZAR_PARCELA'] = 1 then
     begin
      if ParcelasAtualizadas = 'OK' then
          begin
            qryVendaPosto.Edit;
            qryVendaPosto['ATUALIZAR_PARCELA'] := 0;
            qryVendaPosto.Post;
            gravarCommitRetaining
          end;
     end;

     if qryVendaPosto['PARCELAS_GERADAS'] <> 'S' then
     begin
      if ParcelasGeradas = 'OK' then
          begin
            qryVendaPosto.Edit;
            qryVendaPosto['PARCELAS_GERADAS']  := 'S';
            PainelParcelas.Visible := False;
            qryVendaPosto.Post;
            gravarCommitRetaining;
            qryVendaPosto.Close;
            qryVendaPosto.Open();
          end
           else
            PainelParcelas.Visible := True;
     end;

     ParcelasAtualizadas   := '';
     ParcelasGeradas := '';

     VerificarAlerta;

     definirTamanhoDaLinhaDaGrid;

end;

procedure TfrmVendaPostos.AtualizarQuerryes;
 begin
    qryVendaPosto.Close;
    qryCorretor.Close;
    qryMotorista.Close;
    qryPosto.Close;
    qryProduto.Close;
    qryRepresentante.Close;
    qryUsina.Close;
    qryEstoqueUsina.Close;
    qryVendaPosto.Open;
    qryCorretor.Open;
    qryMotorista.Open;
    qryPosto.Open;
    qryProduto.Open;
    qryRepresentante.Open;
    qryUsina.Open;
    qryEstoqueUsina.Open();
 end;

procedure TfrmVendaPostos.btnCancelarClick(Sender: TObject);
begin
  LimparCampos;
  ConfigurarEnables(0);
  qryVendaPosto.Cancel;
end;

procedure TfrmVendaPostos.btnEditarClick(Sender: TObject);
begin
 ConfigurarEnables(1);
 if qryVendaPosto.RecordCount > 0 then
    EditarVenda
   else
    begin
      ShowMessage('N�o h� registros para editar');
      ConfigurarEnables(0);
    end;
end;

procedure TfrmVendaPostos.btnExcluirClick(Sender: TObject);
 var AuxErro : string;
  begin
    if qryVendaPosto.RecordCount > 0 then
       begin
         ConfigurarEnables(0);
       if MessageBox(Application.Handle,'Deseja excluir esse registro?','Confirma��o', MB_YESNO + MB_ICONQUESTION) = mrYes then
          begin
             try
               qryVendaPosto.Delete;
              except
               on E : Exception do
                 begin
                  AuxErro := Copy(E.Message,127,127);
                  MessageDlg('N�o � poss�vel excluir a venda no momento.'+#13
                        +#13+'H� parcelas lan�adas para esta NF'+#13+#13 + 'Para prosseguir, cancele as parcelas existentes ',TMsgDlgType.mtWarning,[TMsgDlgBtn.mbOK],0);
                 end;
             end;
          end;

          try
             tcVendaPosto.CommitRetaining;
          except
              tcVendaPosto.RollbackRetaining;
          end;
       end;
  end;


procedure TfrmVendaPostos.btnParcelasClick(Sender: TObject);
begin
 abrirTelaDeParcelamento;
end;

procedure TfrmVendaPostos.btnNovoClick(Sender: TObject);
begin
    ConfigurarEnables(1);
    editRepresentante.SetFocus;
    qryVendaPosto.Insert;
    LabelAlerta.Visible := False;
end;

procedure TfrmVendaPostos.btnSalvarClick(Sender: TObject);
begin
  SalvarRegistro;
end;

procedure TfrmVendaPostos.calcularCorretagem;
 var Volume, TaxaCorretagem, TotalCorretagem : Double;
begin
       Volume := 0;
       TaxaCorretagem := 0;
       TotalCorretagem := 0;
 if (editVolume.Text <> '') and (editTaxaCorretagem.Text <> '') and (editTaxaCorretagem.Text <> '-') then
      begin
       Volume := StrToFloat(editVolume.Text);
       TaxaCorretagem := StrToFloat(editTaxaCorretagem.Text);
       TotalCorretagem := TaxaCorretagem * Volume;
       editTotalCorretagem.Text := FormatFloat('R$ ###,###,##0.00', TotalCorretagem)
      end
    else
       editTotalCorretagem.Text := '';
end;

procedure TfrmVendaPostos.calcularFrete;
 var Volume, TaxaFrete, TotalFrete : Double;
begin
       Volume := 0;
       TaxaFrete := 0;
       TotalFrete := 0;
 if (editVolume.Text <> '') and (editTaxaFrete.Text <> '') and (editTaxaFrete.Text <> '-') then
      begin
       Volume := StrToFloat(editVolume.Text);
       TaxaFrete := StrToCurr(editTaxaFrete.Text);
       TotalFrete := TaxaFrete * Volume;
       editTotalFrete.Text := FormatFloat('R$ ###,###,##0.00', TotalFrete);
      end
    else
       editTotalFrete.Text := '';
end;

procedure TfrmVendaPostos.calcularValorNF;
 var Volume, ValorCombustivel, TotalNF : Real;

begin

    Volume := 0;
    ValorCombustivel := 0;
    TotalNF := 0;

    if (editVolume.Text <> '') and (editValorCombustivel.Text <> '') then
         begin
           Volume := StrToFloat(editVolume.Text);
           ValorCombustivel := StrToFloat(editValorCombustivel.Text);
           TotalNF := ValorCombustivel * Volume;
           EditValorNF.Text := FormatFloat('R$ ###,###,##0.00', TotalNF)

         end
       else
           EditValorNF.Text := '';

end;

procedure TfrmVendaPostos.ConfigurarEnables(status: integer);
begin
      if status = 0 then
    begin
            btnNovo.Enabled := True;
           btnEditar.Enabled := True;
          btnExcluir.Enabled := True;
         gridVendaPosto.Enabled := True;
         btnParcelas.Enabled := true;
        btnCancelar.Enabled := False;
       btnSalvar.Enabled := False;
      painelCENTRAL.Enabled := false;
    end
   else
    begin
      btnNovo.Enabled := False;
       btnEditar.Enabled := False;
        btnExcluir.Enabled := False;
         gridVendaPosto.Enabled := False;
         btnParcelas.Enabled := False;
          btnCancelar.Enabled := True;
           btnSalvar.Enabled := True;
            painelCENTRAL.Enabled := true;
    end;
end;

procedure TfrmVendaPostos.dsVendaPostoDataChange(Sender: TObject;
  Field: TField);
begin

   if qryVendaPosto['ATUALIZAR_PARCELA'] = 1 then
      LabelAlerta.Visible := True
     else
        LabelAlerta.Visible := False;
end;

procedure TfrmVendaPostos.EditarEstoqueUsina( Action : string; usina, produto, estoqueid : integer);
begin

        if Action = 'editando' then
            begin
             with qryEstoqueUsina do
                 begin
                   Close;
                   SQL.Clear;
                   SQL.Add('select * from estoque_usina where (usinaid = :usina) and (produtoid = :produto) and (estoqueid = :estoqueid)');
                   ParamByName('usina').AsInteger := usina;
                   ParamByName('produto').AsInteger := produto;
                   ParamByName('estoqueid').AsInteger := estoqueid;
                   open;
                 end;
            end;

        if Action = 'concluido' then
            begin
              with qryEstoqueUsina do
                 begin
                   Close;
                   SQL.Clear;
                   SQL.Add('select * from estoque_usina ');
                   open;
                 end;
            end;

end;

procedure TfrmVendaPostos.EditarVenda;

begin

 if qryVendaPosto['STATUS'] = 'EM ABERTO' then
      begin
        qryVendaPosto.Edit;

        qryRepresentante.Locate('representanteid', qryVendaPosto['REPRESENTANTEID'], []);
         editRepresentante.Text    := qryRepresentante['NOME'];

         qryCorretor.Locate('corretorid', qryVendaPosto['CORRETORID'],[]);
         editCorretor.Text         := qryCorretor['NOME'];

         qryMotorista.Locate('motoristaid', qryVendaPosto['MOTORISTAID'],[]);
         editMotorista.Text        := qryMotorista['NOME'];

         qryPosto.Locate('postoid', qryVendaPosto['POSTOID'],[]);
         editPosto.Text            := qryPosto['NOME_FANTASIA'];

         qryProduto.Locate('produtoid', qryVendaPosto['PRODUTOID'],[]);
         editProduto.Text          := qryProduto['DESCRICAO'];

         qryUsina.Locate('usinaid', qryVendaPosto['USINAID'],[]);
         editUsina.Text            := qryUsina['NOME_FANTASIA'];

       //procedure que localiza o estoque exato da tabela EstoqueUsina
         EditarEstoqueUsina('editando', qryUsina['USINAID'], qryProduto['PRODUTOID'], qryVendaPosto['ESTOQUEID']);

         editEstoque.Text          :=  FloatToStr(qryEstoqueUsina['ESTOQUE']);


         qryEstoqueUsina['ESTOQUEID'];

         editEstoque.Text          :=  FloatToStr(qryEstoqueUsina['ESTOQUE']);

         editVolume.Text           := FloatToStr(qryVendaPosto['VOLUME']);
         editValorCombustivel.Text := FloatToStr(qryVendaPosto['VALOR_COMBUSTIVEL']);
         editNF.Text               := IntToStr(qryVendaPosto['NF']);
         EditValorNF.Text          := FloatToStr(qryVendaPosto['VALOR_NF']);
         editTaxaFrete.Text        := FloatToStr(qryVendaPosto['TAXA_FRETE']);
         editTaxaCorretagem.Text   := FloatToStr(qryVendaPosto['TAXA_CORRETAGEM']);
         editTotalFrete.Text       := FloatToStr(qryVendaPosto['VALOR_TOTAL_FRETE']);
         editTotalCorretagem.Text  := FloatToStr(qryVendaPosto['VALOR_TOTAL_CORRETAGEM']);
         dateEmissaoNF.Date        := qryVendaPosto['DATA_EMISSAO_NF'];


      end
     else
       begin
        MessageDlg('Imposs�vel editar esta venda.'+#13
                        +#13+'H� parcelas com pagamentos j� efetuados'+#13+#13,TMsgDlgType.mtWarning,[TMsgDlgBtn.mbOK],0);
        ConfigurarEnables(0);
       end;

end;

procedure TfrmVendaPostos.editCorretorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if Key = VK_RETURN then
     begin
          try
            Application.CreateForm(TfrmCorretores, frmCorretores);
            frmCorretores.Action := 'venda';
            frmCorretores.ShowModal;
          finally
            FreeAndNil(frmCorretores);
          end;
     end;

      if Key = VK_F12 then
    SalvarRegistro;
end;

procedure TfrmVendaPostos.editCorretorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      Key := #0;

end;

procedure TfrmVendaPostos.editJurosChange(Sender: TObject);
begin
  calcularValorNF;
end;

procedure TfrmVendaPostos.editMotoristaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_RETURN then
     begin
          try
            Application.CreateForm(TfrmMotorista, frmMotorista);
            frmMotorista.Action := 'venda';
            frmMotorista.ShowModal;
          finally
              FreeAndNil(frmMotorista);
          end;
     end;

      if Key = VK_F12 then
    SalvarRegistro;
end;

procedure TfrmVendaPostos.editMotoristaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      Key := #0;
end;

procedure TfrmVendaPostos.editNFExit(Sender: TObject);
begin
  if editNF.Text <> '' then
       begin
        if (qryConfirmarNF.Locate('NF', editNF.Text, [])) then
           begin
              MessageDlg('Nota fiscal j� cadastrada.',TMsgDlgType.mtWarning,[TMsgDlgBtn.mbOK],0);
              editNF.SetFocus;
           end;
       end;
end;

procedure TfrmVendaPostos.editNFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F12 then
    SalvarRegistro;
end;

procedure TfrmVendaPostos.editNFKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      Key := #0;
end;

procedure TfrmVendaPostos.editPostoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
     begin
          try
            Application.CreateForm(TfrmPosto, frmPosto);
            frmPosto.DuploClickNaGrid := 'ENVIAR';
            frmPosto.ShowModal;
          finally
              FreeAndNil(frmPosto);
          end;
     end;

      if Key = VK_F12 then
    SalvarRegistro;
end;

procedure TfrmVendaPostos.editPostoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      Key := #0;
end;

procedure TfrmVendaPostos.editProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key = VK_RETURN then
     begin
          try
            Application.CreateForm(TfrmProdutos, frmProdutos);
            frmProdutos.TabelaCapturando := 'VENDAPOSTO';
            frmProdutos.ShowModal;
          finally
              FreeAndNil(frmProdutos);
          end;
     end;

      if Key = VK_F12 then
    SalvarRegistro;
end;

procedure TfrmVendaPostos.editProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      Key := #0;
end;

procedure TfrmVendaPostos.editRepresentanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
     begin
          try
            Application.CreateForm(TfrmRepresentante, frmRepresentante);
            frmRepresentante.Caminho := 'vendas';
            frmRepresentante.ShowModal;
          finally
              FreeAndNil(frmRepresentante);
          end;
     end;

   if Key = VK_F12 then
    SalvarRegistro;

end;

procedure TfrmVendaPostos.editRepresentanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
      Key := #0;
end;

procedure TfrmVendaPostos.editTaxaCorretagemChange(Sender: TObject);
begin
 calcularCorretagem;
end;

procedure TfrmVendaPostos.editTaxaCorretagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F12 then
    SalvarRegistro;
end;

procedure TfrmVendaPostos.editTaxaCorretagemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
      Key := #0;
end;

procedure TfrmVendaPostos.editTaxaFreteChange(Sender: TObject);
begin
   calcularFrete;
end;

procedure TfrmVendaPostos.editTaxaFreteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_F12 then
    SalvarRegistro;
end;

procedure TfrmVendaPostos.editTaxaFreteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      Key := #0;
end;

procedure TfrmVendaPostos.editUsinaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_RETURN then
     begin
          try
            EditarEstoqueUsina('concluido', 0, 0, 0); //convoca��o da procedure mas agora para fazer o select limpo
            Application.CreateForm(TfrmSelecionarEstoqueProduto, frmSelecionarEstoqueProduto);
            frmSelecionarEstoqueProduto.caminhoEntrega := 'vendaposto';
            frmSelecionarEstoqueProduto.ShowModal;
          finally
              FreeAndNil(frmSelecionarEstoqueProduto);
          end;
     end;

      if Key = VK_F12 then
    SalvarRegistro;

end;

procedure TfrmVendaPostos.editUsinaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      Key := #0;
end;

procedure TfrmVendaPostos.editValorCombustivelChange(Sender: TObject);
begin
calcularValorNF;
end;

procedure TfrmVendaPostos.editValorCombustivelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key = VK_F12 then
    SalvarRegistro;
end;

procedure TfrmVendaPostos.editVolumeChange(Sender: TObject);
begin
 calcularFrete;
 calcularCorretagem;
 calcularValorNF;
end;

procedure TfrmVendaPostos.editVolumeExit(Sender: TObject);
begin
// editVolume.text := formatfloat(',0.', strtofloat(editVolume.text))
end;

procedure TfrmVendaPostos.editVolumeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_F12 then
    SalvarRegistro;
end;

procedure TfrmVendaPostos.editVolumeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      Key := #0;
end;

procedure TfrmVendaPostos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryVendaPosto.Close;
  qryCorretor.Close;
  qryMotorista.Close;
  qryPosto.Close;
  qryProduto.Close;
  qryRepresentante.Close;
  qryUsina.Close;
  qryEstoqueUsina.Close;
  qryConfirmarNF.Close;
end;

procedure TfrmVendaPostos.FormShow(Sender: TObject);
begin
 qryVendaPosto.Open;
 qryCorretor.Open;
 qryMotorista.Open;
 qryPosto.Open;
 qryProduto.Open;
 qryRepresentante.Open;
 qryUsina.Open;
 qryEstoqueUsina.Open();
 qryConfirmarNF.Open();

  ConfigurarEnables(0);

  dateEmissaoNF.Date := Date;

  if qryVendaPosto.RecordCount < 1 then
            PainelParcelas.Visible := False
           else
             PainelParcelas.Visible := True;

  VerificarAlerta;
  definirTamanhoDaLinhaDaGrid;

end;

procedure TfrmVendaPostos.gravarCommitRetaining;
begin
       try
          tcVendaPosto.CommitRetaining;
      except
            tcVendaPosto.RollbackRetaining;
      end;



end;

procedure TfrmVendaPostos.gridVendaPostoColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
 definirTamanhoDaLinhaDaGrid;
end;

procedure TfrmVendaPostos.gridVendaPostoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   {   //zebrando o dbgrid
    if Odd(gridVendaPosto.DataSource.DataSet.RecNo) then
        gridVendaPosto.Canvas.Brush.Color := $00CFCFCF
       else
          gridVendaPosto.Canvas.Brush.Color := clWhite;


    //mudando a cor da sele��o
    if ( gdSelected in State ) then
         begin
            gridVendaPosto.Canvas.Brush.Color := $00BC7B50;
             gridVendaPosto.Canvas.Font.Color := clWhite;
              gridVendaPosto.Canvas.Font.Style := [fsBold];
         end;



        gridVendaPosto.Canvas.FillRect( Rect );
        gridVendaPosto.DefaultDrawColumnCell( Rect, DataCol, Column, State );

           //  mudando a posi��o e alinhamento vertical do texto de cada linha
     gridVendaPosto.Canvas.TextRect(Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText);
    }
end;

procedure TfrmVendaPostos.ImgFecharTelaClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmVendaPostos.LimparCampos;
begin
   editPosto.Clear;
   editProduto.Clear;
   editUsina.Clear;
   editMotorista.Clear;
   editCorretor.Clear;
   editRepresentante.Clear;
   editEstoque.Clear;
   editNF.Clear;
   EditValorNF.Clear;
   editTaxaFrete.Clear;
   editTaxaCorretagem.Clear;
   editTotalCorretagem.Clear;
   editTotalFrete.Clear;
   editVolume.Clear;
   editValorCombustivel.Clear;

  dateEmissaoNF.Date := Date;
  //dateVencimento.Date := Date;

end;

procedure TfrmVendaPostos.qryVendaPostoBeforePost(DataSet: TDataSet);
begin
        if qryVendaPosto.State in [dsEdit] then

     begin
        if (qryVendaPosto.FieldByName('REPRESENTANTEID').OldValue        = qryVendaPosto.FieldByName('REPRESENTANTEID').Value) and
           (qryVendaPosto.FieldByName('POSTOID').OldValue                = qryVendaPosto.FieldByName('POSTOID').Value) and
           (qryVendaPosto.FieldByName('PRODUTOID').OldValue              = qryVendaPosto.FieldByName('PRODUTOID').Value) and
           (qryVendaPosto.FieldByName('MOTORISTAID').OldValue            = qryVendaPosto.FieldByName('MOTORISTAID').Value) and
           (qryVendaPosto.FieldByName('CORRETORID').OldValue             = qryVendaPosto.FieldByName('CORRETORID').Value) and
           (qryVendaPosto.FieldByName('USINAID').OldValue                = qryVendaPosto.FieldByName('USINAID').Value) and
           (qryVendaPosto.FieldByName('NF').OldValue                     = qryVendaPosto.FieldByName('NF').Value) and
           (qryVendaPosto.FieldByName('VALOR_NF').OldValue               = qryVendaPosto.FieldByName('VALOR_NF').Value) and
           (qryVendaPosto.FieldByName('DATA_EMISSAO_NF').OldValue        = qryVendaPosto.FieldByName('DATA_EMISSAO_NF').Value) and
           (qryVendaPosto.FieldByName('VOLUME').OldValue                 = qryVendaPosto.FieldByName('VOLUME').Value) and
           (qryVendaPosto.FieldByName('TAXA_FRETE').OldValue             = qryVendaPosto.FieldByName('TAXA_FRETE').Value) and
           (qryVendaPosto.FieldByName('VALOR_TOTAL_FRETE').OldValue      = qryVendaPosto.FieldByName('VALOR_TOTAL_FRETE').Value) and
           (qryVendaPosto.FieldByName('TAXA_CORRETAGEM').OldValue        = qryVendaPosto.FieldByName('TAXA_CORRETAGEM').Value) and
           (qryVendaPosto.FieldByName('VALOR_TOTAL_CORRETAGEM').OldValue = qryVendaPosto.FieldByName('VALOR_TOTAL_CORRETAGEM').Value) and
           (qryVendaPosto.FieldByName('VALOR_COMBUSTIVEL').OldValue      = qryVendaPosto.FieldByName('VALOR_COMBUSTIVEL').Value) and
 //          (qryVendaPosto.FieldByName('VENCIMENTO_NF').OldValue          = qryVendaPosto.FieldByName('VENCIMENTO_NF').Value) and
           (qryVendaPosto.FieldByName('STATUS').OldValue                 = qryVendaPosto.FieldByName('STATUS').Value)

         then
            begin
              if ( qryVendaPosto['ATUALIZAR_PARCELA'] = 0 ) Then
                 begin
                   LimparCampos;
                   ConfigurarEnables(0);
                 end;
            end
           else
                 VerificarSeAtualizaParcela('SIM');
     end;

end;

procedure TfrmVendaPostos.SalvarRegistro;
  var SituacaoCampo, campos : string;
      ConverterValorNF, ConverterValorFrete, ConverterValorCorretagem : Currency;
begin

     SituacaoCampo := VerificarCamposVazios(campos); //Fun��o detecta se tem campos vazios e avisa o usu�rio .

    if SituacaoCampo <> 'empty' then
    begin
      qryVendaPosto['REPRESENTANTEID']    := qryRepresentante['REPRESENTANTEID'];
      qryVendaPosto['POSTOID']            := qryPosto['POSTOID'];
      qryVendaPosto['PRODUTOID']          := qryProduto['PRODUTOID'];
      qryVendaPosto['MOTORISTAID']        := qryMotorista['MOTORISTAID'];
      qryVendaPosto['CORRETORID']         := qryCorretor['CORRETORID'];
      qryVendaPosto['ESTOQUE_ID_VENDAS']  := qryEstoqueUsina['ESTOQUEID'];
      qryVendaPosto['NF']                 := StrToInt(editNF.Text);

                                              // fun��o "TextToCurr" foi criada para limpar os caracteres "R"$ "." "," para gravar no banco sem levantar exception�.
                                              // Est� declarada na unit UConvertFloat...
      ConverterValorNF                        := TextToCurr(EditValorNF.Text);
      ConverterValorFrete                     := TextToCurr(editTotalFrete.Text);
      ConverterValorCorretagem                := TextToCurr(editTotalCorretagem.Text);

      qryVendaPosto['VALOR_NF']               := ConverterValorNF;
      qryVendaPosto['DATA_EMISSAO_NF']        := dateEmissaoNF.Date;
      qryVendaPosto['VOLUME']                 := StrToFloat(EditVolume.Text);
      qryVendaPosto['TAXA_FRETE']             := StrToFloat(editTaxaFrete.Text);
      qryVendaPosto['VALOR_TOTAL_FRETE']      := ConverterValorFrete;
      qryVendaPosto['TAXA_CORRETAGEM']        := StrToFloat(editTaxaCorretagem.Text);
      qryVendaPosto['VALOR_TOTAL_CORRETAGEM'] := ConverterValorCorretagem;
      qryVendaPosto['VALOR_COMBUSTIVEL']      := StrToFloat(editValorCombustivel.Text);

      if qryVendaPosto.State in [dsInsert] then
         begin
           qryVendaPosto['PARCELAS_GERADAS'] := 'N';
           qryVendaPosto['STATUS'] := 'EM ABERTO';
           qryVendaPosto['ATUALIZAR_PARCELA'] := 0;
           qryVendaPosto['TOTAL_NF_RECEBIDO'] := 0;
           qryVendaPosto['VOLUME_TOTAL_RETIRADO'] := 0;
           qryVendaPosto.FieldByName('STATUS_FRETE').AsString := 'ABT';
           qryVendaPosto.FieldByName('STATUS_CORRETAGEM').AsString := 'ABT';
           qryVendaPosto.FieldByName('STATUS_PGTO_CLIENTE').AsString := 'ABT';
         end;

      EditarEstoqueUsina('concluido', 0, 0, 0); //convoca��o da procedure mas agora para fazer o select limpo
      qryVendaPosto.Post;

      LimparCampos;
      ConfigurarEnables(0);

      GravarCommitRetaining;

      if qryVendaPosto['PARCELAS_GERADAS'] = 'N' then
           abrirTelaDeParcelamento;

      AtualizarQuerryes;

    end;

end;

procedure TfrmVendaPostos.VerificarAlerta;
begin
if qryVendaPosto.RecordCount > 0  then
        LabelAlerta.Visible := True
        else
        LabelAlerta.Visible := False;
end;

function TfrmVendaPostos.VerificarCamposVazios(campos: string): string;
  begin
     if (editRepresentante.Text = '') or
        (editPosto.Text = '') or
        (editProduto.Text = '') or
        (editVolume.Text = '') or
        (editValorCombustivel.Text = '') or
        (editUsina.Text = '') or
        (editNF.Text = '') or
        (editMotorista.Text = '') or
        (editCorretor.Text = '') or
        (editTaxaFrete.Text = '') or
        (editTaxaCorretagem.Text = '')
     then
      begin
        campos := 'empty';
        ShowMessage('Verifique os campos vazios');
      end
     else
       begin
        campos := 'ok';
       end;
        Result := campos;
  end;

procedure TfrmVendaPostos.VerificarSeAtualizaParcela( status : string);

begin

  if (status = 'SIM') and ( qryVendaPosto['PARCELAS_GERADAS'] = 'S') then
           qryVendaPosto['ATUALIZAR_PARCELA'] := 1;
  if status = 'N�O' then
           qryVendaPosto['ATUALIZAR_PARCELA'] := 0;
end;


end.

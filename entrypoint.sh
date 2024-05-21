#!/bin/bash
clear
sleep 10
echo importing data will start...


# run the scripts in /schemas folder to create the DB and the tables
for entry in schemas/*.sql
do
  echo executando $entry
  /opt/mssql-tools/bin/sqlcmd -S 0.0.0.0 -U sa -P $SA_PASSWORD -i $entry
done

# run scripts to populate by Bulk insert all these test data

echo importando dados dos arquivos csv:
/opt/mssql-tools/bin/bcp titan.dbo.tbUF in data/tbUF.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
# /opt/mssql-tools/bin/bcp dbo.tbBombas in data/tbBombas.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbCaixa in data/tbCaixa.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbCaixaItens in data/tbCaixaItens.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbCarretaTransportadora in data/tbCarretaTransportadora.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbCEST in data/tbCEST.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbCFOP in data/tbCFOP.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbCidades in data/tbCidades.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbCidades in data/tbCidades.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbContadores in data/tbContadores.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbContadoresPosto in data/tbContadoresPosto.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbContasPagarReceber in data/tbContasPagarReceber.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbEntidadeFormaPagPrazo in data/tbEntidadeFormaPagPrazo.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbEntidades in data/tbEntidades.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbEntidadesFone in data/tbEntidadesFone.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbGrupo in data/tbGrupo.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbGrupos in data/tbGrupos.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbHistoricoPagamentoCliente in data/tbHistoricoPagamentoCliente.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbHistoricos in data/tbHistoricos.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbLocalEstoque in data/tbLocalEstoque.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbLocalEstoquePosto in data/tbLocalEstoquePosto.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbMotoristaTransportadora in data/tbMotoristaTransportadora.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbNaturezaOperacao in data/tbNaturezaOperacao.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbNCM in data/tbNCM.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbOperadoras in data/tbOperadoras.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbOperadorasProduto in data/tbOperadorasProduto.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbPermissoesPrazo in data/tbPermissoesPrazo.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbPlanoConta in data/tbPlanoConta.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbPontoVenda in data/tbPontoVenda.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbPostos in data/tbPostos.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbPrecosEspeciais in data/tbPrecosEspeciais.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbProdutos in data/tbProdutos.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbProdutosConversaoCodigo in data/tbProdutosConversaoCodigo.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbProdutosDestinacao in data/tbProdutosDestinacao.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbProdutosPostos in data/tbProdutosPostos.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbReducaoEmissao in data/tbReducaoEmissao.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbReducaoMedicao in data/tbReducaoMedicao.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','/opt/mssql-tools/bin/bcp dbo.Quartos in data/.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbRetiradaObrigacao in data/tbRetiradaObrigacao.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbStatusWebServices in data/tbStatusWebServices.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbTanques in data/tbTanques.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbTipoDoc in data/tbTipoDoc.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbTipoProd in data/tbTipoProd.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbTurno in data/tbTurno.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbUF in data/tbUF.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbUnidadeMedidas in data/tbUnidadeMedidas.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbUsuarios in data/tbUsuarios.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbUsuariosPostos in data/tbUsuariosPostos.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbVeiculoTransportadora in data/tbVeiculoTransportadora.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
# /opt/mssql-tools/bin/bcp dbo.tbVersaoSped in data/tbVersaoSped.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','
#/opt/mssql-tools/bin/bcp dbo.Quartos in data/.csv -S localhost -U sa -P $SA_PASSWORD -d $titan -c -t ','

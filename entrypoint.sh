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
clear
echo importando dados dos arquivos csv:
echo "------------------------------------------------------------------------------------------------------"
echo "tbUF"
/opt/mssql-tools/bin/bcp titan.dbo.tbUF in data/tbUF.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbBombas"
/opt/mssql-tools/bin/bcp titan.dbo.tbBombas in data/tbBombas.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbCaixa"
/opt/mssql-tools/bin/bcp titan.dbo.tbCaixa in data/tbCaixa.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbCaixaItens"
/opt/mssql-tools/bin/bcp titan.dbo.tbCaixaItens in data/tbCaixaItens.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbCarretaTransportadora"
/opt/mssql-tools/bin/bcp titan.dbo.tbCarretaTransportadora in data/tbCarretaTransportadora.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbCEST"
/opt/mssql-tools/bin/bcp titan.dbo.tbCEST in data/tbCEST.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbCFOP"
/opt/mssql-tools/bin/bcp titan.dbo.tbCFOP in data/tbCFOP.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbCidades"
/opt/mssql-tools/bin/bcp titan.dbo.tbCidades in data/tbCidades.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbContadores"
/opt/mssql-tools/bin/bcp titan.dbo.tbContadores in data/tbContadores.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbContadoresPosto"
/opt/mssql-tools/bin/bcp titan.dbo.tbContadoresPosto in data/tbContadoresPosto.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbContasPagarReceber"
/opt/mssql-tools/bin/bcp titan.dbo.tbContasPagarReceber in data/tbContasPagarReceber.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbContasPagarReceberParcelas"
/opt/mssql-tools/bin/bcp titan.dbo.tbEntidadeFormaPagPrazo in data/tbEntidadeFormaPagPrazo.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbEntidadeFormaPagPrazo"
/opt/mssql-tools/bin/bcp titan.dbo.tbEntidades in data/tbEntidades.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbEntidadesFone"
/opt/mssql-tools/bin/bcp titan.dbo.tbEntidadesFone in data/tbEntidadesFone.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbGrupo"
/opt/mssql-tools/bin/bcp titan.dbo.tbGrupo in data/tbGrupo.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbGrupos"
/opt/mssql-tools/bin/bcp titan.dbo.tbGrupos in data/tbGrupos.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbHistoricoPagamentoCliente"
/opt/mssql-tools/bin/bcp titan.dbo.tbHistoricoPagamentoCliente in data/tbHistoricoPagamentoCliente.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbHistoricos"
/opt/mssql-tools/bin/bcp titan.dbo.tbHistoricos in data/tbHistoricos.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
/opt/mssql-tools/bin/bcp titan.dbo.tbLocalEstoque in data/tbLocalEstoque.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "tbLocalEstoquePosto"
/opt/mssql-tools/bin/bcp titan.dbo.tbLocalEstoquePosto in data/tbLocalEstoquePosto.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbMotoristaTransportadora"
/opt/mssql-tools/bin/bcp titan.dbo.tbMotoristaTransportadora in data/tbMotoristaTransportadora.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbNaturezaOperacao"
/opt/mssql-tools/bin/bcp titan.dbo.tbNaturezaOperacao in data/tbNaturezaOperacao.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbNCM"
/opt/mssql-tools/bin/bcp titan.dbo.tbNCM in data/tbNCM.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbOperadoras"
/opt/mssql-tools/bin/bcp titan.dbo.tbOperadoras in data/tbOperadoras.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbOperadorasProduto"
/opt/mssql-tools/bin/bcp titan.dbo.tbOperadorasProduto in data/tbOperadorasProduto.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbPermissoesPrazo"
/opt/mssql-tools/bin/bcp titan.dbo.tbPermissoesPrazo in data/tbPermissoesPrazo.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbPlanoConta"
/opt/mssql-tools/bin/bcp titan.dbo.tbPlanoConta in data/tbPlanoConta.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbPlanoContaGrupo"
/opt/mssql-tools/bin/bcp titan.dbo.tbPontoVenda in data/tbPontoVenda.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbPontoVenda"
/opt/mssql-tools/bin/bcp titan.dbo.tbPostos in data/tbPostos.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbPrecosEspeciais"
/opt/mssql-tools/bin/bcp titan.dbo.tbPrecosEspeciais in data/tbPrecosEspeciais.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbProdutos"
/opt/mssql-tools/bin/bcp titan.dbo.tbProdutos in data/tbProdutos.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbProdutosConversaoCodigo"
/opt/mssql-tools/bin/bcp titan.dbo.tbProdutosConversaoCodigo in data/tbProdutosConversaoCodigo.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbProdutosDestinacao"
/opt/mssql-tools/bin/bcp titan.dbo.tbProdutosDestinacao in data/tbProdutosDestinacao.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbProdutosPostos"
/opt/mssql-tools/bin/bcp titan.dbo.tbProdutosPostos in data/tbProdutosPostos.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbProdutosUnidadeMedida"
/opt/mssql-tools/bin/bcp titan.dbo.tbReducaoEmissao in data/tbReducaoEmissao.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbReducaoEmissao"
/opt/mssql-tools/bin/bcp titan.dbo.tbReducaoMedicao in data/tbReducaoMedicao.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbRetiradaObrigacao"
/opt/mssql-tools/bin/bcp titan.dbo.tbRetiradaObrigacao in data/tbRetiradaObrigacao.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbStatusWebServices"
/opt/mssql-tools/bin/bcp titan.dbo.tbStatusWebServices in data/tbStatusWebServices.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbTanques"
/opt/mssql-tools/bin/bcp titan.dbo.tbTanques in data/tbTanques.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbTipoDoc"
/opt/mssql-tools/bin/bcp titan.dbo.tbTipoDoc in data/tbTipoDoc.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbTipoProd"
/opt/mssql-tools/bin/bcp titan.dbo.tbTipoProd in data/tbTipoProd.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbTruno"
/opt/mssql-tools/bin/bcp titan.dbo.tbTurno in data/tbTurno.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbUnidadeMedidas"
/opt/mssql-tools/bin/bcp titan.dbo.tbUnidadeMedidas in data/tbUnidadeMedidas.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbUsuarios"
/opt/mssql-tools/bin/bcp titan.dbo.tbUsuarios in data/tbUsuarios.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbUsuariosPostos"
/opt/mssql-tools/bin/bcp titan.dbo.tbUsuariosPostos in data/tbUsuariosPostos.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbVeiculoTransportadora"
/opt/mssql-tools/bin/bcp titan.dbo.tbVeiculoTransportadora in data/tbVeiculoTransportadora.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbVersaoSped"
/opt/mssql-tools/bin/bcp titan.dbo.tbVersaoSped in data/tbVersaoSped.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
sleep 1
echo "------------------------------------------------------------------------------------------------------"
echo "tbAliquotaICMSIinterEstadual"
/opt/mssql-tools/bin/bcp titan.dbo.tbAliquotaICMSIinterEstadual in data/tbAliquotaICMSIinterEstadual.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
echo "------------------------------------------------------------------------------------------------------"
echo "Fim da importação de dados."
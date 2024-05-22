# auto-init-sqlserver-docker
Este projeto inicializa uma instância do SQL Server no Docker usando docker-compose e aplica scripts SQL na base de dados.

## Ferramentas
Na pasta `tools`, existe um script para formatar os arquivos CSV na pasta `data`. Este script deve ser usado sempre que novos dados forem adicionados.

## Adicionando novos dados
Quando novos dados são adicionados, o desenvolvedor deve editar o arquivo `entrypoint.sh`. Este arquivo deve referenciar o novo dado e a tabela na qual ele deve ser inserido.

Por exemplo, se você adicionou um arquivo `newdata.csv` para a tabela `newtable`, você deve adicionar a seguinte linha ao `entrypoint.sh`:

```bash
/opt/mssql-tools/bin/bcp titan.dbo.newtable in data/newdata.csv -S localhost -U sa -P $SA_PASSWORD -c -t ',' -r '\n'
# Análise Base de Dados Chinook
A base de dados Chinook representa um cenário realista de uma loja de musical digital. O objetivo inicial é realizar uma análise exploratória de suas tabelas relacionadas a clientes, álbuns, músicas, artistas, gêneros musicais, vendas e funcionários, podendo assim identificar quais os principais indicadores que impactam na Receita Total da empresa do ano de 2009 a 2013.

Para executar cada consulta de SQL utilizada nesta análise, basta realizar o download do arquivo Chinook+v13.0.1742.0.bak e anexá-lo ao SQL Server.
<br><br>

## Análise Exploratória de Dados
<img align="right" width="600"  src="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/Imagens/Chinook%20-%20Vis%C3%A3o%20Geral%20SQL.png">
O primeiro passo para iniciar o projeto foi entender a estrutura da loja digital, identificando cada tabela, campo, tipos de dados e relacionamentos dos modelos de dados Chinook.
Após identificar os relacionamentos através do diagrama de dados, observamos as tabelas e suas conexões implícitas com a tabela de vendas (InvoiceLine).
Posteriormente, desenvolvemos os scripts em SQL para exploração dos dados, e assim obtendo os primeiros insigths. 
As consultas foram: <br><br>
-  Vendas por Gênero Musical <br>
-  Vendas por Artista <br>
-  Vendas por Música <br>
-  Vendas por mês <br>
<br>
<a href="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/SQL/Chinook%20-%20Vis%C3%A3o%20Geral.sql">Clique aqui</a> e acesse o script SQL no Github.

<br><br>
## Análise de Clientes
<img align="right" width="500" height="320" src="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/Imagens/Chinook%20-%20Clienes%20SQL.png">
A análise dos clientes foi baseada em suas faturas, identificando os valores gastos por cada cliente.
Através de uma CTE – Common Table Expression, podemos agrupar os clientes por ID, nome, sobrenome e País.
Na CTE criada com o nome TotalGastoPorCliente, identificamos os valores gastos e a média de gastos por cliente. Os resultados foram:<br><br>
- Madalena Sampaio foi a cliente com maior consumo, com o total de $1511,95 <br>
- O valor consumido por Madalena Sampaio é cerca de 22% acima da média total <br>
<br>
<a href="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/SQL/Chinook%20-%20Clientes.sql">Clique aqui</a> e acesse o script SQL no Github.

<br><br>

## Análise de Vendedores
<img align="right" width="500" height="320" src="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/Imagens/Chinook%20-%20Vendedor%20SQL.png">
A análise de vendedores teve como objetivo identificar no volume total das faturas, o desempenho dos vendedores no período total e qual o número total de clientes de cada um deles.
Sendo assim, podemos observar que apenas 3 vendedores tiveram resultados no período, concluindo que: <br><br>
- Margaret Park obteve melhor desempenho, cerca de 34,9% total de vendas com 20 clientes <br>
- Mesmo com um número de 21 clientes, Jane Peacock obteve 34,7% total de vendas no período <br>
- Steve Johnson correspondeu a 30,3% da receita total com 18 clientes <br>
<br>
<a href="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/SQL/Chinook%20-%20Vendedores.sql">Clique aqui</a> e acesse o script SQL no Github.

<br><br>

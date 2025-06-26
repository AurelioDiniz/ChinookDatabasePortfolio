# Análise Base de Dados Chinook
A base de dados Chinook representa um cenário realista de uma loja de música digital. 
O objetivo inicial é realizar uma análise exploratória de suas tabelas relacionadas a clientes, álbuns, músicas, artistas, gêneros musicais, vendas e funcionários, podendo assim, identificar quais os principais indicadores que impactam na Receita Total da empresa do ano de 2009 a 2013.

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
-  Vendas por Mês <br>
<br>
<a href="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/SQL/Chinook%20-%20Vis%C3%A3o%20Geral.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.

<br><br>
## Análise de Clientes
<img align="right" width="500" height="320" src="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/Imagens/Chinook%20-%20Clienes%20SQL.png">
A análise dos clientes foi baseada em suas faturas, identificando os valores gastos por cada cliente.
Através de uma CTE – Common Table Expression, podemos agrupar os clientes por ID, nome, sobrenome e País.
Na CTE criada com o nome TotalGastoPorCliente, identificamos os valores gastos e a média de gastos por cliente. Os resultados foram:<br><br>
- Madalena Sampaio foi a cliente com maior consumo, com o total de $1511,95 <br>
- O valor consumido por Madalena Sampaio é cerca de 22% acima da média total <br>
<br>
<a href="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/SQL/Chinook%20-%20Clientes.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.

<br><br>

## Análise de Vendedores
<img align="right" width="500" height="320" src="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/Imagens/Chinook%20-%20Vendedor%20SQL.png">
A análise de vendedores teve como objetivo identificar no volume total das faturas, o desempenho dos vendedores no período total e qual o número total de clientes de cada um deles.
Sendo assim, podemos observar que apenas 3 vendedores tiveram resultados no período, concluindo que: <br><br>
- Margaret Park obteve melhor desempenho, cerca de 34,9% total de vendas com 20 clientes <br>
- Mesmo com um número de 21 clientes, Jane Peacock obteve 34,7% total de vendas no período <br>
- Steve Johnson correspondeu a 30,3% da receita total com 18 clientes <br>
<br>
<a href="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/SQL/Chinook%20-%20Vendedores.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.

<br><br>

## Análise de Diversidade de Gêneros por Artista
<img align="right" width="500"  src="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/Imagens/Chinook%20-%20Diversidade%20de%20generos%20SQL.png">
A análise de diversidade de gêneros por artistas foi possível através de um subconsulta, identificando a contagem de gêneros musicais por faixa de cada artista e ordenando por gênero musical. 
Concluímos que: <br><br>
- Iron Maiden foi o artista com maior número gênero musical em suas faixas, totalizando 4 gêneros. <br>
<br>
<a href="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/main/SQL/Chinook%20-%20Diversidade%20de%20Genero%20Musical%20por%20Artista.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.

<br><br>

## Conclusão Técnica do SQL

O SQL é uma ferramenta essencial para análise, aprimoramento e manipulação de dados diretamente na fonte, permitindo um acesso rápido e preciso às informações. 
No entanto, sua abordagem visual é limitada, já que os dados são sempre apresentados em formato de tabela. 
Isso significa que, para visualizar as informações de diferentes maneiras, é necessário reescrever as consultas, tornando a análise menos dinâmica em comparação com dashboards interativos. 

Por isso, o SQL deve ser o primeiro passo na exploração de um banco de dados, garantindo a validação das informações antes de utilizá-las em ferramentas como o Power BI. 
Dessa forma, evitamos inconsistências e garantimos que as visualizações sejam construídas sobre uma base confiável.
No fim das contas, não existe uma ferramenta superior à outra, mas sim a mais adequada.

<br><br>

## Apresentação no Power BI
<img align="right" width="500"  src="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/blob/abf00383db548762d37d85e0885aecde049a1a1f/Imagens/Chinook%20vis%C3%A3o%20geral.png">
Utilizando o Power Bi, desenvolvemos um Dashboard interativo e visual. 
As análises foram possíveis através de códigos DAX, onde o foco da apresentação foi demonstrar os principais indicadores das respectivas consultas realizadas no SQL. <br>
Sendo assim, podemos concluir que: <br><br>
- Rock é o gênero musical que mais vendeu no período, com cerca de 28% das vendas totais <br>
- Aproximadamente, a média de vendas anuais é de 14.625 mil <br>
- O melhor desempenho de vendas foi no ano de 2011 com cerca de 20,3% das vendas totais <br>
<br><br>
<a href="https://app.powerbi.com/view?r=eyJrIjoiOTI4OTU0NjgtYzUwOC00ZjBkLWIyYjQtYmU1NmViYjRjNGFiIiwidCI6Ijg3YmVhYjI1LTZlOGQtNGMxZC05MjU4LWZmM2RmOTZlNTcyNyJ9" target="_blank">Clique aqui</a> e acesse a solução desenvolvida para a empresa Chinook.
<br>
<a href="https://github.com/AurelioDiniz/ChinookDatabasePortfolio/raw/refs/heads/main/POWERBI/Chinook%20Dashboard.pbix" target="_blank">Clique aqui</a> e acesse o arquivo .pbix no Github.
<br><br>

## Ferramentas e linguagens utilizadas
<div style="display: inline_block">
    <img align="center" alt="SQL" height="40" width="40" src="https://github.com/AurelioDiniz/Portfolio/blob/main/linguagens/sql.png">
    <img align="center" alt="Power BI" height="40" width="40" src="https://github.com/AurelioDiniz/Portfolio/blob/main/linguagens/power%20bi.png">
</div>



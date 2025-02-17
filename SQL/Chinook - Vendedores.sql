USE Chinook

--TOTAL DE VENDAS POR VENDEDOR E QUANTIDADE DE CLIENTES
SELECT
	E.FirstName + ' ' + E.LastName AS VENDEDOR,
	SUM(IL.LineTotal) AS TOTAL_VENDAS,
	COUNT(DISTINCT  C.CustomerID) AS TOTAL_CLIENTES
FROM InvoiceLine AS IL
INNER JOIN Invoice AS I ON I.InvoiceId = IL.InvoiceId
INNER JOIN Customer AS C ON C.CustomerId = I.CustomerId
INNER JOIN Employee AS E ON E.EmployeeId = C.SupportRepId
GROUP BY E.FirstName, E.LastName
ORDER BY TOTAL_VENDAS DESC

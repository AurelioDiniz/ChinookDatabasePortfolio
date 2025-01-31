USE Chinook;

--TOP 10 TOTAL DE VENDAS E VALOR MÉDIO POR CLIENTE
--UTILIZANDO CTE
WITH TotalGastoPorCliente AS (
    SELECT 
        C.CustomerId,
        C.FirstName + ' ' + C.LastName AS Cliente,
        c.Country AS PAÍS,
        SUM(I.InvoiceTotal) AS Total_Vendas
    FROM 
        Customer AS C
    INNER JOIN 
        Invoice AS I ON C.CustomerId = I.CustomerId
    GROUP BY 
        C.CustomerId, C.FirstName, C.LastName, C.Country
),
MediaDeGastos AS (
    SELECT 
        AVG(Total_Vendas) AS Media_Total
    FROM 
        TotalGastoPorCliente
)
SELECT TOP 10
    T.Cliente,
    T.PAÍS,
    T.Total_Vendas,
    A.Media_Total
FROM 
    TotalGastoPorCliente AS T
CROSS JOIN 
    MediaDeGastos AS A
WHERE 
    T.Total_Vendas > A.Media_Total
ORDER BY 
    T.Total_Vendas DESC;

USE Northwind
GO

SELECT c.CompanyName, MAX(o.OrderDate) AS [FECHA ULTIMO PEDIDO],
DATEDIFF(MONTH,MAX(o.OrderDate), GETDATE()) AS [MESES DESDE ULTIMO PEDIDO]
FROM [Customers] c
INNER JOIN [Orders] o
ON c.CustomerID = o.CustomerID
GROUP BY c.CompanyName
HAVING DATEDIFF(MONTH,MAX(o.OrderDate), GETDATE()) >= 20
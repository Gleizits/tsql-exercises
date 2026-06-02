USE Northwind
GO

SELECT c.CompanyName, SUM(od.Quantity * od.UnitPrice) AS [Total],

CASE
	-- lOS PARENTECIS ESTAN PARA NO EQUIVOCARME DE DONDE INICIA Y TERMINA
	WHEN (SUM(od.Quantity * od.UnitPrice) >= 30000) THEN 'A'

	WHEN (SUM(od.Quantity * od.UnitPrice) >= 20000
	AND SUM(od.Quantity * od.UnitPrice) < 30000)  THEN 'B'

	ELSE 'C'
	END AS [Level]

FROM [Customers] c
INNER JOIN [Orders] o
ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID
GROUP BY
	c.CompanyName
ORDER BY c.CompanyName ASC
GO
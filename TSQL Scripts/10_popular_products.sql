USE Northwind
GO

SELECT TOP 10 p.ProductName, SUM(od.Quantity) AS [Unit Sold]
FROM [Order Details] od
INNER JOIN [Products] p
ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY [Unit Sold] DESC
GO
USE Northwind
GO


SELECT DISTINCT p.ProductID, p.ProductName, p.UnitPrice AS [Unit Price]
FROM [Products] p
ORDER BY [Unit Price] DESC
OFFSET 1 ROW
FETCH NEXT 1 ROW ONLY
GO
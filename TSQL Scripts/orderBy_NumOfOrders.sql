USE Northwind
GO

SELECT c.CompanyName, COUNT(o.OrderID) AS [ORDERS NUM]
FROM [Customers] c
INNER JOIN [Orders] o
ON c.CustomerID = o.CustomerID
GROUP BY c.CompanyName
ORDER BY [ORDERS NUM] ASC
USE Northwind
GO

SELECT TOP 10 c.CompanyName, c.Country, SUM(od.Quantity * od.UnitPrice) AS [TOTAL AMOUNT]
FROM [Customers] c
INNER JOIN [Orders] o
ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID
WHERE YEAR(o.OrderDate) = '2018'
GROUP BY c.CompanyName, c.Country
ORDER BY SUM(od.Quantity * od.UnitPrice) DESC
GO
USE Northwind
GO

SELECT c.CompanyName,
DATEDIFF(DAY, o1.OrderDate, o2.OrderDate) AS [DAYS BETWEEM TWO ORDERS]
FROM [Customers] c
INNER JOIN [Orders] o1
ON c.CustomerID = o1.CustomerID
INNER JOIN [Orders] o2
ON o1.OrderID = o2.OrderID -1
ORDER BY c.CompanyName ASC
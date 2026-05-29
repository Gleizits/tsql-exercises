USE Northwind
GO

SELECT p.ProductName, c.City, od.Quantity
FROM [Customers] c
INNER JOIN [Orders] o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
INNER JOIN [Products] p ON od.ProductID = p.ProductID
WHERE c.Country = 'USA'
ORDER BY c.City, od.Quantity ASC;
USE Northwind
GO

SELECT p.ProductName, c.City, od.Quantity,
DENSE_RANK () OVER (PARTITION BY c.City ORDER BY od.Quantity DESC) AS RANK 
FROM [Customers] c
INNER JOIN [Orders] o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
INNER JOIN [Products] p ON od.ProductID = p.ProductID
WHERE c.Country = 'USA'
ORDER BY od.Quantity DESC;
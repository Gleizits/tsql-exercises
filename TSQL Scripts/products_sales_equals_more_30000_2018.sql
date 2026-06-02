USE Northwind
GO

SELECT p.ProductID, p.ProductName, SUM(od.Quantity) AS [Cantidad],
	SUM(p.UnitPrice * od.Quantity) AS [Total Sales]
FROM [Products] p
INNER JOIN [Order Details] od
ON p.ProductID = od.ProductID
INNER JOIN [Orders] o
ON od.OrderID = o.OrderID
WHERE YEAR(o.ShippedDate) = '2018'
GROUP BY
	p.ProductID,
	p.ProductName 
HAVING SUM(p.UnitPrice * od.Quantity) >= 30000
ORDER BY SUM(p.UnitPrice * p.UnitsOnOrder) DESC
GO
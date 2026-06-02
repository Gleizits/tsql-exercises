USE Northwind
GO

SELECT o.OrderID, o.ShipCountry,
SUM(od.Quantity * od.UnitPrice) AS [Total Amount],
DATEDIFF(DAY, o.OrderDate, o.ShippedDate) AS Duration
FROM [Orders] o
INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID
GROUP BY o.OrderID, o.ShipCountry, o.OrderDate, o.ShippedDate
HAVING DATEDIFF(DAY, o.OrderDate, o.ShippedDate)  > 2 AND
SUM(od.Quantity * od.UnitPrice) > 10000
ORDER BY o.OrderID ASC
GO
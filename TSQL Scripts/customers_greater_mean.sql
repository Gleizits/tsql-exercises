USE Northwind
GO

SELECT 
    c.CompanyName, 
    c.City,
    c.Country,
    SUM(od.Quantity * od.UnitPrice) AS [Total]
FROM [Customers] c
INNER JOIN [Orders] o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
WHERE YEAR(o.OrderDate) = '2018'
GROUP BY
    c.CompanyName,
    c.City,
    c.Country
HAVING SUM(od.Quantity * od.UnitPrice) > (
    SELECT AVG(VentasPorCliente.TotalCliente)
    FROM (
        SELECT SUM(od2.Quantity * od2.UnitPrice) AS TotalCliente
        FROM [Order Details] od2
        GROUP BY od2.OrderID
    ) AS VentasPorCliente
)
ORDER BY [Total] DESC
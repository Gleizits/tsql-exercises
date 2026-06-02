USE Northwind
GO

SELECT e.EmployeeID, e.LastName + ' ' + e.FirstName AS [Full Name],
	SUM(od.UnitPrice * od.Quantity) AS [Sales],
	ROUND(SUM(od.UnitPrice * od.Quantity) * 0.02, 0) AS [Bonus]
FROM [Employees] e
INNER JOIN [Orders] o
ON e.EmployeeID = o.EmployeeID
INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID
WHERE YEAR(o.OrderDate) = '2018' AND MONTH(o.OrderDate) = '1'
GROUP BY e.EmployeeID,
	e.LastName,
	e.FirstName
ORDER BY e.EmployeeID ASC
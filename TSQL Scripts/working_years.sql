USE Northwind
GO

SELECT e.EmployeeID, e.LastName + ' ' + e.FirstName AS [FULL NAME],
DATEDIFF(YEAR, e.HireDate, GETDATE()) AS [WORK YEAR]
FROM [Employees] e
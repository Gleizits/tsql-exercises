USE Northwind
GO

SELECT e.EmployeeID, e.LastName, e.FirstName, e.Title, e.City
FROM [Employees] e
ORDER BY e.City, e.Title ASC
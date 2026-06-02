USE Northwind
GO

SELECT e.EmployeeID, e.LastName + ' '+ e.FirstName AS [FULL NAME] , e.BirthDate
FROM [Employees] e
WHERE DATEDIFF(YEAR, e.BirthDate, GETDATE()) >= 70
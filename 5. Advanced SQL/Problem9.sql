SELECT d.Name AS Department, AVG(e.Salary) as [Average salary]
FROM Employees e JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
	GROUP BY d.Name

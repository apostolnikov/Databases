SELECT d.Name AS Department, e.JobTitle as [Job Title], AVG(e.Salary) AS [Average salary] FROM Employees e 
	JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
	GROUP BY d.Name, e.JobTitle
SELECT 
	e.FirstName, 
	e.LastName 
	FROM 
	Departments d, 
	Employees e
	WHERE
	(d.DepartmentID = e.DepartmentID)
	AND	
	(e.HireDate BETWEEN '1995' AND '2005')
	AND
	(d.Name = 'Sales' OR d.Name = 'Finance')
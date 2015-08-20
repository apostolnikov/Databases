SELECT e.FirstName + ' ' + e.LastName AS FirstName, IsNull(m.FirstName + ' ' + m.LastName, '(no manager)') AS Manager
FROM Employees e
	JOIN Managers m
		ON e.ManagerID = m.Id
		
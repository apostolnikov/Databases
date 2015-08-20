SELECT e.FirstName, e.LastName, m.FirstName + ' ' + m.LastName AS Manager FROM Employees e, Managers m
	WHERE e.ManagerID = m.Id
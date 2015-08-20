SELECT e.FirstName, e.LastName, a.AddressText AS Adress, m.FirstName + ' ' + m.LastName AS Manager FROM Employees e, Addresses a, Managers m
	WHERE e.AddressID = a.AddressID AND e.ManagerID = m.Id
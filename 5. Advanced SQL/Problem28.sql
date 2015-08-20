SELECT t.Name as Town, COUNT(e.ManagerID) FROM 
	Employees e 
	JOIN Addresses a ON e.AddressID = a.AddressID
	JOIN Towns t ON a.TownID = t.TownID
	GROUP BY t.Name

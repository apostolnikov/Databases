SELECT TOP 1 t.Name AS Name, COUNT(e.FirstName) AS [Number of employees] FROM Employees e 
	JOIN Addresses a ON e.AddressID = a.AddressID
	JOIN Towns t ON a.TownID = t.TownID
	GROUP BY t.Name
	ORDER BY COUNT(e.FirstName) DESC
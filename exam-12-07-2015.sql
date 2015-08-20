--na 6ta zadacha vtorichen sort po email provider     za 9ta ot lqvo na dqsno strenght deffence desc  
-- 12 item name se narejda  
---2
select TOP 50 Name as Game, CONVERT(char(10), Start,126) as Start from Games
where Start BETWEEN CONVERT(datetime,'2011') AND CONVERT(datetime,'2013')
order by CONVERT(char(10), Start,126), Name

---3

select Username, SUBSTRING ( Email ,CHARINDEX('@', Email) + 1 , LEN(Email)) as [Email Provider] from Users
order by [Email Provider], Username

---4

select Username, IpAddress as [IP Address] from Users
where IpAddress like '___.1%.%.___'
order by Username

---5
select 
	Name as Game,
	(case 
		when DATEPART(HOUR,Start) >= 0 and DATEPART(HOUR,Start) < 12 then 'Morning'
		when DATEPART(HOUR,Start) >= 12 and DATEPART(HOUR,Start) < 18 then 'Afternoon'
		when DATEPART(HOUR,Start) >= 18 and DATEPART(HOUR,Start) < 24 then 'Evening'
	end) as [Part of the Day],
	(case
		when Duration <= 3 then 'Extra Short'
		when Duration >=4 and Duration <= 6 then 'Short'
		when Duration > 6  then 'Long'
		when Duration is null then  'Extra Long'
	end) as Duration
 from Games
 order by Name, Duration, [Part of the Day]


 ---6

 select 
	SUBSTRING ( Email ,CHARINDEX('@', Email) + 1 , LEN(Email)) as [Email Provider],
	COUNT(u.Username) as [Number Of Users] from Users u
GROUP by SUBSTRING ( Email ,CHARINDEX('@', Email) + 1 , LEN(Email))
order by COUNT(u.Username) desc, SUBSTRING ( Email ,CHARINDEX('@', Email) + 1 , LEN(Email))



 ---7 

 select
	g.Name as Game,
	gt.Name as [Game Type],
	u.Username,
	ug.Level,
	ug.Cash,
	ch.Name as [Character]
	 
from 
	Games g 
	join GameTypes gt on g.GameTypeId = gt.Id
	join UsersGames ug on ug.GameId = g.Id
	join Users u on u.Id = ug.UserId  
	join Characters ch on ug.CharacterId = ch.Id
order by
	ug.Level desc, u.Username, g.Name


---8
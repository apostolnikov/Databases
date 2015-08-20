ALTER PROCEDURE udp_CalculateAccountInterest(@accountId int, @interestRate real)
AS
BEGIN
	DECLARE @newSum MONEY, @currentAccountBalance money
	SELECT @currentAccountBalance = a.Balance FROM
	Persons p INNER JOIN Accounts a ON p.Id = a.PersonID
	WHERE a.Id = @accountId
	SET @newSum = dbo.udf_CalculateInterest(@currentAccountBalance, @interestRate, 1)
	return @newSum
END

-- Example usage
declare @interest money
exec @interest = dbo.udp_CalculateAccountInterest 3, 2.5
select @interest
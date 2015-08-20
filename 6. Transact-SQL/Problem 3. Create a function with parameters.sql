ALTER FUNCTION udf_CalculateInterest(@sum money, @interestRate real, @months int)
RETURNS money
AS
BEGIN
	DECLARE @newSum money
	SET @newSum = @sum * (1 + (@interestRate / 100) * @months)
	RETURN @newSum
END

-- Example usage
SELECT dbo.udf_CalculateInterest(10000, 3.875, 5)
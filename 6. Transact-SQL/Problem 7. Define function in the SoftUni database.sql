ALTER FUNCTION udf_SearchNames(@lettersSet nvarchar(max))
RETURNS @Names TABLE
(
	Name NVARCHAR(MAX)
)
AS
BEGIN
	DECLARE namesCursor CURSOR READ_ONLY FOR
	SELECT FirstName FROM Employees
	UNION
	SELECT LastName FROM Employees
	UNION
	SELECT Name FROM Towns
	OPEN namesCursor
	DECLARE @currentName NVARCHAR(MAX)
	FETCH NEXT FROM namesCursor INTO @currentName
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF dbo.udf_MatchesTheLetterSet(@currentName, @lettersSet) = 1
			INSERT INTO @Names (Name) VALUES(@currentName)
		FETCH NEXT FROM namesCursor INTO @currentName
	END
	CLOSE namesCursor
	DEALLOCATE namesCursor
RETURN
END
GO

CREATE FUNCTION udf_MatchesTheLetterSet(@wordToBeChecked nvarchar(50), @lettersCheckSet nvarchar(50))
RETURNS BIT
AS
BEGIN
	DECLARE @result BIT,
			@currentLetter NVARCHAR(1)
	SET @result = 1
	WHILE @wordToBeChecked <> ''
	BEGIN
		SET @currentLetter = SUBSTRING(@wordToBeChecked, 1, 1)
		IF CHARINDEX(@currentLetter, @lettersCheckSet) = 0
			SET @result = 0
			BREAK
		SET @wordToBeChecked = REPLACE(@currentLetter, @wordToBeChecked, '')
	END
	RETURN @result
END
GO

-- Example usage
SELECT * FROM udf_SearchNames('oistmiahf')
/*
This script will select all the values from a chosen column as a comma seperated field.
*/
DECLARE @firstNames NVARCHAR(MAX)
SELECT @firstNames = COALESCE(@firstNames + pp.FirstName + ', ', '')
FROM Person.Person pp
GROUP BY pp.FirstName
ORDER BY pp.FirstName
SELECT @firstNames AS 'Unique First Names Only';
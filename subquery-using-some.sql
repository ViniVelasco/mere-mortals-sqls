SELECT
	*
FROM
	entertainers e
WHERE
	e.entertainerid = SOME (
	SELECT
		eg.entertainerid
	FROM
		engagements eg
	INNER JOIN customers c ON
		eg.customerid = c.customerid
	WHERE
		lower(c.custlastname) = 'berg'
		OR lower(c.custlastname) = 'hallmark' )

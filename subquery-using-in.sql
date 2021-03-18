SELECT
	*
FROM
	customers c
WHERE
	c.customerid IN (
	SELECT
		e.customerid
	FROM
		engagements e
	INNER JOIN entertainers et ON
		et.entertainerid = e.entertainerid
	INNER JOIN entertainer_styles es ON
		es.entertainerid = e.entertainerid
	WHERE
		es.styleid = 6)

SELECT
	cb.categorydescription,
	COUNT(c.subjectid)
FROM
	classes c
INNER JOIN subjects s ON
	c.subjectid = s.subjectid
INNER JOIN categories cb ON
	cb.categoryid = s.categoryid
GROUP BY
	cb.categorydescription
HAVING
	count(c.subjectid) > 3
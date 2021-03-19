SELECT
	s.stffirstname || ' ' || s.stflastname,
	COUNT(fc.classid)
FROM
	staff s
INNER JOIN faculty_classes fc ON
	s.staffid = fc.staffid
GROUP BY
	s.stffirstname,
	s.stflastname
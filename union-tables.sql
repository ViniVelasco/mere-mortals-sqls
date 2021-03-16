SELECT
	i.ingredientname,
	m.measurementdescription,
	'Ingredients' AS type
FROM
	measurements m
INNER JOIN ingredients i ON
	i.measureamountid = m.measureamountid
UNION
SELECT
	i.ingredientname,
	m.measurementdescription,
	'Recipe' AS type
FROM
	Measurements m
INNER JOIN Recipe_Ingredients ri ON
	m.measureamountid = ri.measureamountid
INNER JOIN Ingredients i ON
	i.ingredientid = ri.ingredientid
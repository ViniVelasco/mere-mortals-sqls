SELECT
	i.ingredientname
FROM
	ingredients i
WHERE
	i.measureamountid <> SOME (
	SELECT
		ri.measureamountid
	FROM
		recipes r
	INNER JOIN recipe_ingredients ri ON
		ri.ingredientid = i.ingredientid )
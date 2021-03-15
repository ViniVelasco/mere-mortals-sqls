SELECT
	i.ingredientid,
	i.ingredientclassid,
	i.ingredientname,
	i.measureamountid
FROM
	ingredients i
LEFT OUTER JOIN (
	SELECT
		DISTINCT r.recipeid,
		ri.ingredientid
	FROM
		recipes r
	INNER JOIN recipe_ingredients ri ON
		r.recipeid = RI.recipeid ) AS igrecipe ON
	igrecipe.ingredientid = i.ingredientid
SELECT
	i.ingredientname,
	COUNT(DISTINCT ri.recipeid)
FROM
	ingredients i
LEFT OUTER JOIN recipe_ingredients ri ON
	ri.ingredientid = i.ingredientid
WHERE
	i.ingredientclassid = 2
GROUP BY
	i.ingredientname
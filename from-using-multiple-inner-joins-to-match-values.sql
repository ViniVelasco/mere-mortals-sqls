SELECT
	BeefRecipe.title
FROM
	(
	SELECT
		r.recipeid,
		r.recipetitle AS title
	FROM
		recipes r
	INNER JOIN recipe_ingredients ri ON
		ri.recipeid = r.recipeid
	INNER JOIN ingredients i ON
		i.ingredientid = ri.ingredientid
	WHERE
		upper(i.ingredientname) = 'BEEF' ) BeefRecipe
INNER JOIN (
	SELECT
		r.recipeid,
		r.recipetitle AS title
	FROM
		recipes r
	INNER JOIN recipe_ingredients ri ON
		ri.recipeid = r.recipeid
	INNER JOIN ingredients i ON
		i.ingredientid = ri.ingredientid
	WHERE
		upper(i.ingredientname) = 'GARLIC' ) GarlicRecipe ON
	GarlicRecipe.recipeid = BeefRecipe.recipeid

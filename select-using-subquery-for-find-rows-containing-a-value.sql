SELECT
	RecipeTitle
FROM
	Recipes
WHERE
	Recipes.RecipeID IN (
	SELECT
		RecipeID
	FROM
		Recipe_Ingredients
	WHERE
		Recipe_Ingredients.IngredientID IN (
		SELECT
			IngredientID
		FROM
			Ingredients
		INNER JOIN Ingredient_Classes ON
			Ingredients.IngredientClassID = Ingredient_Classes.IngredientClassID
		WHERE
			UPPER(Ingredient_Classes.IngredientClassDescription) = 'SEAFOOD'))
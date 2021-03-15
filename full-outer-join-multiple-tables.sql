SELECT
	Recipe_Classes.RecipeClassDescription,
	Recipes.RecipeTitle,
	Ingredients.IngredientName,
	Recipe_Ingredients.RecipeSeqNo,
	Recipe_Ingredients.Amount,
	Measurements.MeasurementDescription
FROM
	Recipes
LEFT OUTER JOIN Recipe_Ingredients ON
	Recipes.RecipeID = Recipe_Ingredients.RecipeID
INNER JOIN Measurements ON
	Measurements.MeasureAmountID = Recipe_Ingredients.MeasureAmountID
FULL OUTER JOIN Ingredients ON
	Ingredients.IngredientID = Recipe_Ingredients.IngredientID
FULL OUTER JOIN Recipe_Classes ON
	Recipes.RecipeClassID = Recipe_Classes.RecipeClassID
ORDER BY
	Recipe_Classes.RecipeClassDescription DESC,
	Recipes.RecipeTitle,
	Recipe_Ingredients.RecipeSeqNo
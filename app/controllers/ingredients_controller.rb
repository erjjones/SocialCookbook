
class IngredientsController < ApplicationController
	def create
		@recipe = Recipe.find(params[:recipe_id])
		@ingredient = @recipe.ingredients.create(params[:ingredient])
		redirect_to recipe_path(@recipe)
    end
	
	def destroy
		@recipe = Recipe.find(params[:recipe_id])
		@ingredient = @recipe.ingredients.find(params[:id])
		@ingredient.destroy
		redirect_to recipe_path(@recipe)
    end
end

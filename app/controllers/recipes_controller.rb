class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @ing1 = @recipe.ingredients.build(name:'ing1')
    @ing2 = @recipe.ingredients.build(name:'ing2')
  end

  def create
    recipe=Recipe.create(recipe_params)
  end

  private

  def recipet_params
    params.require(:recipe).permit(:title, ingredients_attributes:[
      :name, 
      :quantity
      ])
end

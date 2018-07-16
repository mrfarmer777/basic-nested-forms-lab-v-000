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
  end
end

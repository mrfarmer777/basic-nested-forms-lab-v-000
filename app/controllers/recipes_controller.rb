class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @ing1 = @recipe.ingredients.build
    @ing2 = @recipe.ingredients.build
  end

  def create
  end
end

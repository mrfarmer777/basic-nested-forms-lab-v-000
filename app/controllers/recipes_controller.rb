class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @ing1 = Ingredient.new
    @ing2 = Ingredient.new
  end

  def create
  end
end

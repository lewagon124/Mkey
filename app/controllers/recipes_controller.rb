class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
  end

  def show
    @recipe= Recipe.find(params[:id])
  end

  def search
    if params[:search].present?
      sql_query = "name ILIKE :query"
      @recipe = Recipe.where(sql_query, query: "%#{params[:search]}%")
  end

  def new
    @recipe =Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:video,:image,:desc,:prep_time,:cook_time)
  end
end

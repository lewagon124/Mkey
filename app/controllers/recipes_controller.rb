class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:search,:show]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def search
    if params[:search].present?
      sql_query = "name ILIKE :query"
      @recipes = Recipe.where(sql_query, query: "%#{params[:search]}%")
    end
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

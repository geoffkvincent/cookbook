class Api::RecipesController < ApplicationController
  before_action : set_recipe, only: [:show, :update, :destroy]

  def index
    render json: Recipe.all
  end

  def show
    render json: @recipe
  end

  def create
    recipe = Recipe.new(recipe_params)

    if recipe.save
      render json: recipe
    else
      render_errors(recipe)
    end
  end

  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render_errors(@recipe)
    end
  end

  def destroy
    @recipe.destroy
  end

  private
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def resipe_params
    params.require(:recipe).permit(:name, :description)
  end
end

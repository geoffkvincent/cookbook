class Api::IngredientsController < ApplicationController
  before_action :set_ingredients, only: [:show, :update, :destroy]
  def index
    render json: Ingredient.all
  end

  def show
    render json: @ingredient
  end

  def create
    ingredient = Ingredient.new(ingredient_params)

    if ingredients.save
      render json: ingredient
    else
      render_error(ingredient)
    end
  end

  def update

    if ingredients.update
      render json: @ingredient
    else
      render_error(@ingredient)
    end
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  
end

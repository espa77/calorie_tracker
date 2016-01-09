class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    meal = Meal.create(meal_params)
    redirect_to meal
  end

  private
  def meal_params
    params.require(:meal).permit(:food, :calories, :id)
  end
end

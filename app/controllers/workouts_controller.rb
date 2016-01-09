class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    workout = Workout.create(workout_params)
    redirect_to workout
  end

  private
  def workout_params
    params.require(:workout).permit(:activity, :calories_burned, :id)
  end
end

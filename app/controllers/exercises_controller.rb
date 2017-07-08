class ExercisesController < ApplicationController
  def index

  end

  def show
    @exercise = Exercise.find_by_id(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)
    @exercise.muscle_group = params[:muscle_group]
    @exercise.save

    if @exercise.save
      redirect_to user_path(current_user), notice: 'Exercise Saved'
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def exercise_params
    params.require(:exercise).permit(:name)
  end
end

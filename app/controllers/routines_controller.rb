class RoutinesController < ApplicationController
  def index

  end

  def show
    @routine = Routine.find_by_id(params[:id])
    @exercises = Exercise.all
  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.create(routine_params)
    @routine.user_id = current_user.id
    @routine.save

    if @routine.save
      redirect_to routines_path, notice: 'Routine Saved'
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

  #
  ## Custom Actions
  def add_exercises
    @routine = Routine.find_by_id(params[:routine])
    exercises = params[:exercise_ids][:ids]
    exercises.shift

    exercises.each do |exercise|
      @routine.exercises << Exercise.find_by_id(exercise)
    end

    @routine.save

    if @routine.save
      redirect_to routine_path(@routine), notice: 'Exercises Added!'
    else
      render 'show', alert: 'Something went wrong!'
    end

  end

  private

  def routine_params
    params.require(:routine).permit(:name)
  end
end

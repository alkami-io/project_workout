class RoutinesController < ApplicationController
  def index

  end

  def show

  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.create(routine_params)

    if @routine.save
      redirect_to user_path(current_user), notice: 'Routine Saved'
    else
      render 'new'
    end

  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def routine_params
    params.require(:routine).permit(:name)
  end
end

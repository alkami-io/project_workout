class RoutinesController < ApplicationController
  def index

  end

  def show
    @routine = Routine.find_by_id(params[:id])
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

  private

  def routine_params
    params.require(:routine).permit(:name)
  end
end

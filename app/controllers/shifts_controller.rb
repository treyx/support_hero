class ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
  end

  def new
  end

  def create
  end

  def update
    shift = Shift.find(params[:id])
    shift.update_attributes(user_id: select_id_from_available_user)
    flash[:success] = "Enjoy your day off!"
    redirect_to :back
  end
end

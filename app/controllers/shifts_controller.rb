class ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
  end

  def new
  end

  def create
  end

  def update
    if params[:commit] == "Swap!"
      shift = Shift.find(params[:id])
      shift.update_attributes(user_id: params[:shift][:user_id])
    else
      shift = Shift.find(params[:id])
      shift.update_attributes(user_id: all_users_except_current.sample.id)
    end

    flash[:success] = "Enjoy your day off!"
    redirect_to :back
  end
end

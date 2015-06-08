class ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
  end

  def new
  end

  def create
    user_ids = map_input_by_user_id(params[:heroes])
    dates = ShiftDates.new(from: Date.today)
    user_ids.zip(dates).map { |id, date| Shift.create(date: date, user_id: id) }
    redirect_to root_path
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

  private

  def map_input_by_user_id(sched)
    sched.scan(/\w+/).map { |name| User.find_by(name: name) }.map(&:id)
  end
end

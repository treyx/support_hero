class UsersController < ApplicationController

  def show
    @shifts = Shift.where(user_id: current_user.id)
  end
end

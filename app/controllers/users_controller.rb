class UsersController < ApplicationController
  def show
    @shifts = Shift.where(user_id: current_user.id)
    @heroes = all_users_except_current
  end
end

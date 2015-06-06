class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :todays_hero

  def todays_hero
    todays_shift = Shift.find_by(date: Date.today)
    User.find(todays_shift.user_id).name
  end
end

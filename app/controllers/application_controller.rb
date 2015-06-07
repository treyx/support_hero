class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :todays_hero, :current_user, :current_user_is_hero, :current_user_is_admin

  def todays_hero
    if todays_shift = Shift.find_by(date: Date.today)
      User.find_by(id: todays_shift.user_id).name
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_user_is_hero
    current_user && current_user.hero?
  end

  def current_user_is_admin
    current_user && current_user.admin?
  end
end

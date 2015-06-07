class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Successfully logged in as #{user.name}"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:danger] = "Invalid login."
      redirect_to :back
    end
  end
end

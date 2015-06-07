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
      flash[:danger] = "Invalid Login"
      redirect_to :back
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "See you next time!"
    redirect_to root_path
  end
end

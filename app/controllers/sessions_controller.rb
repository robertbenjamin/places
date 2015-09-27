class SessionsController < ApplicationController

  def create
  user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_places_path(current_user)
    else
      redirect_to login_path, notice: "Username or password is invalid."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
    # attach to above line if you want a notice => , notice: "Logged out!"
  end

end

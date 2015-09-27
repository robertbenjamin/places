class UsersController < ApplicationController
  skip_before_action :authenticate

  def landing
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password, :password_confirmation))
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_places_path(current_user), notice: "Thank you for signing up — try adding a new place above!"
    else
      render "new"
    end
  end

end

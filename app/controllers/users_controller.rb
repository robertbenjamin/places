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
      redirect_to user_places_path, notice: "Thank you for signing up!"
    else
      render "new"
    end
end


  # def sign_up
  # end

  # def sign_up!
  #   user = User.new(
  #     username: params[:username],
  #     password_digest: BCrypt::Password.create(params[:password])
  #   )
  #   if params[:password_confirmation] != params[:password]
  #     message = "Your passwords don't match!"
  #   elsif user.save
  #     message = "Your account has been created!"
  #   else
  #     message = "Your account couldn't be created. Did you enter a unique username and password?"
  #   end
  #   flash[:notice] = message
  #   redirect_to action: :sign_up
  # end

  # def sign_in
  # end

  # def sign_in!
  #   @user = User.find_by(username: params[:username])
  #   if !@user
  #     message = "This user doesn't exist!"
  #   elsif !BCrypt::Password.new(@user.password_digest).is_password?(params[:password])
  #     message = "Your password's wrong!"
  #   else
  #     message = "Welcome, #{@user.username}! "
  #       cookies[:username] = {
  #         value: @user.username
  #         # expires: 100.years.from_now
  #       }
  #       session[:user] = @user
  #   end
  #   flash[:notice] = message
  #   redirect_to root_url
  # end

  # def sign_out
  #   flash[:notice] = "You're signed out!"
  #   reset_session
  #   redirect_to root_url
  # end

end

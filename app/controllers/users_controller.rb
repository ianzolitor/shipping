class UsersController < ApplicationController
  def index
  end

  def show
  end

  def create
    user=User.new(user_params)
      if user.save!
      session[:user_id] = user.id
    end
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

end

class UsersController < ApplicationController
before_action :authorize_update, only: [:update]

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    if User.new(user_params).save
      flash[:success] = "You have successfully registered."
      redirect_to users_path
    else
      flash[:error] = "You have failed to register."
      redirect_to new_user_path
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

  def authorize_update
    @user = User.find(params[:id])
    redirect_to posts_path if @user.id != current_user
  end
end

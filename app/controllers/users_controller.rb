class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to dashboard_path
  end

  def dashboard
  end

  private

  def user_params
    require.params(:user).permit(:name, :address)
  end

end

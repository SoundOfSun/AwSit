class UsersController < ApplicationController

  def index
    @users = policy_scope(User).all
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
    @user = current_user
    @bookings = @user.bookings
    authorize @user
    # means we need to create a related Pundit policy
  end

  private

  def user_params
    require.params(:user).permit(:name, :babysitter, :address, :profile_description)
  end

end




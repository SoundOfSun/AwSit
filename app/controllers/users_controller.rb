class UsersController < ApplicationController

  def index
  end

  def edit
  end

  def update
  end

  private

  def user_params
    require.params(:user).permit(:name, :address)
  end

end

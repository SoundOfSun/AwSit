class RecommendationsController < ApplicationController

  def new
    @recommendation = Recommendations.new
  end

  def create
    # Find the babysitter
    @user = User.find(params[:id])
    # Create the recommendation msg
    @recommendation = Recommendation.new
    # Link the msg to the babysitter
    @recommendation.user = @user
    # Say current user originated the msg
    @recommendation.user = current_user
    # Rendering logic
    if @recommendation.save
      redirect_to user_path(@user)
    else
      render 'users/dashboard'
    end
  end

   def edit
    @recommendation = Recommendation.find(params[:id])
  end

  def update
    recommendation_to_update = Recommendation.find(params[:id])
    recommendation_to_update.update(recommendation_params)
    redirect_to recommendation_path(recommendation_to_update)
  end

end

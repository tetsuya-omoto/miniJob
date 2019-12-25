class ReviewsController < ApplicationController
  before_action :set_del
  def create
    @review = Review.new(review_params)
    if @review.save
      @user = current_user
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:star, :text).merge(user_id: @del.user_id, del_id: @del.id)
  end
  def set_del
    @del = Del.find(params[:del_id])
  end
end

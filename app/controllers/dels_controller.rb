class DelsController < ApplicationController
  before_action :set_request
  # def index
  #   @dels = @request.dels.includes(:user)
  # end
  def new
    @del = Del.new
    # @dels = @request.dels.includes(:user)
  end
  def create
    @del = Del.new(del_params)
    if @del.save
      @user = current_user
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end
  def show
    @del = del.find(params[:id])
  end

  private

  def del_params
    params.require(:del).permit(:name, :text).merge(user_id: current_user.id, request_id: params[:request_id])
  end
  def set_request
    @request = Request.find(params[:request_id])
  end
end

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
    @job = Job.find(params[:id])
    @requests = @job.requests.count
  end

  def signup
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      redirect_to new_user_registration_path
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :password, :email, :nickname)
  end
end
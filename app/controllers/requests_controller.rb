class RequestsController < ApplicationController
  before_action :set_job
  def index
    @requests = @job.requests.includes(:user)
  end
  def new
    @request = Request.new
    @requests = @job.requests.includes(:user)
  end
  def create
    @requests = @job.requests.includes(:user)
    @request = @job.requests.new(request_params)
    if @request.save
      redirect_to job_path(@job)
    else
      redirect_to root_path
    end
  end
  def show
    @request = Request.find(params[:id])
  end

  private

  def request_params
    params.require(:request).permit(:name, :price, :del_time, :text).merge(user_id: current_user.id)
  end
  def set_job
    @job = Job.find(params[:job_id])
  end
end

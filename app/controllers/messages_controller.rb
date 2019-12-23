class MessagesController < ApplicationController
  before_action :set_job, only: [:new, :create]
  # def new
  #   @message = Message.new
  #   @messages = @job.messages.includes(:user)
  # end
  def create
    @messages = @job.messages.includes(:user)
    @message = @job.messages.new(message_params)
    if @message.save
      redirect_to job_path(@job)
    else
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id)
  end
  def set_job
    @job = Job.find(params[:job_id])
  end
end

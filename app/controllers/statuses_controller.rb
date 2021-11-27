class StatusesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  
  def index
    @status = Status.new
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to clients_path
    else
      render :new
    end
  end

  private

  def status_params
    params.require(:status).permit(:name)
  end
end

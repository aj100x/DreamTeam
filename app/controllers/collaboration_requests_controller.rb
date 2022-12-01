class CollaborationRequestsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @collaboration_request = CollaborationRequest.new(collaboration_request_params)
    @collaboration_request.requester = current_user
    @collaboration_request.project = @project
    if @collaboration_request.save
      redirect_to project_path(@project)
      flash[:notice] = "Request Sent"
    else
      render :new, status: :unprocessable_entity
  end
  end

  def new
    @collaboration_request = CollaborationRequest.new
  end

  def index
  end

  # list the collaboration requests that the project owner has recieved
  # list the collaboration requests that the requestee has made


  private

  def collaboration_request_params
    params.require(:collaboration_request).permit(:content)
  end
end

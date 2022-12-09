class CollaborationRequestsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @collaboration_request = CollaborationRequest.new(collaboration_request_params)
    @collaboration_request.requester = current_user
    @collaboration_request.project = @project
    if @collaboration_request.save!
      redirect_to collaboration_requests_path
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

  def accept
    @collaboration_request = CollaborationRequest.find(params[:id])
    @collaboration_request.status = "accepted"
    @collaboration_request.save!
    @project_user = ProjectUser.create(project: @collaboration_request.project, user: @collaboration_request.requester)
    redirect_to collaboration_requests_path
  end

  def decline
    @collaboration_request = CollaborationRequest.find(params[:id])
    @collaboration_request.status = "declined"
    @collaboration_request.save!
    redirect_to collaboration_requests_path
  end


# def set_request_status
#   if @collaboration_request.status == "accepted"
#     puts "\e[32m Accepted!"
#   elsif @collaboration_request.status == "declined"
#     puts "\e[31m Declined"
#   else
#     puts "\e[31m Pending"
#   end
# end






  # list the collaboration requests that the project owner has recieved
  # list the collaboration requests that the requestee has made


  private

  def collaboration_request_params
    params.require(:collaboration_request).permit(:content)
  end
end

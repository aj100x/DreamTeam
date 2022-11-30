class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @collaboration_request = CollaborationRequest.new(project: @project)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.owner = current_user
    if @project.save
      redirect_to project_path(@project)
      flash[:notice] = "New project succesfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  def delete
    if @project.destroy
      redirect_to projects_path(@project)
    else
      render :index
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      redirect_to projects_path(@project)
    else
      render :index
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end


  def project_params
    params.require(:project).permit(:owner_id, :name, :description, :photo)
  end
end

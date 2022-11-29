class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
  def show
    @project = Project.find(params[:id])
  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end
  def edit
    @project = Project.find(params[:id])
  end
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_param)
      redirect_to :action => 'show', :id => @project
    else
      @projects = Project.all
      render :action => 'edit'
    end
  end
  def delete
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
  params.require(:projects).permit(:owner_id, :name, :description)
end

def project_param
  params.require(:project).permit(:owner_id, :name, :description)
end
end

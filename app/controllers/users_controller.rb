class UsersController < ApplicationController
  def list
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @projects = Project.all
    @collaboration_requests = Collaboration_Request.all
    @skill_users = Skill_User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: 'list'
    else
      render action: 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @projects = Project.all
    @collaboration_requests = Collaboration_Request.all
    @skill_users = Skill_User.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_param)
      redirect_to action: 'show', id: @user
    else
      @projects = Project.all
      @collaboration_requests = Collaboration_Request.all
      @skill_users = Skill_User.all
    end
  end

  def delete
    User.find(params[:id]).destroy
    redirect_to action: 'list'
  end

  def show_projects
    @project = Project.find(params[:id])
  end

  def show_collaboration_requests
    @collaboration_requests = Collaboration_Request.find(params[:id])
  end

  def show_skill_users
    @skill_users = Skill_User.find(params[:id])
  end

  private

  def user_params
    params.require(:users).permit(:first_name, :last_name, :date_of_birth, :bio, :email, :university, :uni_start_year, :uni_end_year, :course)
  end

  def book_param
    params.require(:user).permit(:first_name, :last_name, :date_of_birth, :bio, :email, :university, :uni_start_year, :uni_end_year, :course)
  end
end

class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render plain: @user.inspect
    else
      render :new
    end
  end

  def index
    @user = User.all
  end

  def project_log
    @user = current_user
  end

  def participant_project_log
    @user = current_user
  end


  def update
    if current_user.update!(user_params)
      flash[:notice] = "Profile successfully updated"
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :first_name,
      :last_name,
      :tagline,
      :bio,
      :uni_start_year,
      :uni_end_year,
      :course,
      :skill,
      :university
    )
  end
end

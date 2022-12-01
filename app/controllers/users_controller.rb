class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def save

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
      :university
    )
  end
end

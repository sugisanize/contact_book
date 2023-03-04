class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:child_first_name, :team_id, :email, :last_name, :first_name, :last_name_kana, :first_name_kana)
  end
end

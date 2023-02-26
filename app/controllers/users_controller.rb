class UsersController < ApplicationController
  def edit
  end

  def update
    current_user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:child_first_name, :team_id, :email, :last_name, :first_name, :last_name_kana, :first_name_kana)
  end
end

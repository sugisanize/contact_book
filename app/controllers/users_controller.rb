class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @users = User.where(team_id: params[:id])
  end

  def show
    @user = User.find(current_user.id)
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
  
  def withdrawal
    @user = User.find(current_user.id)
  end

  def destroy
    user = User.find(current_user.id)

    if user.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(:child_first_name, :team_id, :email, :last_name, :first_name, :last_name_kana, :first_name_kana)
  end
end

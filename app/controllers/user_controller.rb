class UserController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    params.require(:user).permit(:email, :password, :current_password, :password_confirmation, {avatar: []})
  end
end

  private

  def admin_only
  unless current_user.admin?
  redirect_to :back, :alert => "Access denied."
  end
end

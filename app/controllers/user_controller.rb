class UserController < ApplicationController
  before_filter :authenticate_user!
  before_filter :admin_only, :except => :show

  def login
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "Admin Login is successful"
    redirect_to :controller => :productitems
  end

  def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "You have been successfully logged out!!"
    redirect_to :controller => :productitems
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

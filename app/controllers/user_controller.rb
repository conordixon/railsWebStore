class UserController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :admin_only

  def index
    @users = User.all
  end

  def login
    session[:login] = 1
    session[:cart] = nil
    redirect_to :controller => :productitems
  end

  def logout
    session[:login] = nil
    session[:cart] = nil
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
    redirect_to :root unless current_user.admin
  end
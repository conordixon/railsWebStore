class UserController < ApplicationController

  def login
    session[:login] = 1
    flash[:notice] = "Admin Login is sucessful"
    redirect_to :controller => :productitems
  end

  def logout
    session[:login] = nil
    flash[:notice] = "You have been successfully logged out!!"
    redirect_to :controller => :productitems
  end
end

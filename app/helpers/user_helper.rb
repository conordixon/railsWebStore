module UserHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def user_admin
    current_user && current_user.admin
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
class User < ApplicationRecord
  # self.abstract_class = true
  mount_uploader :avatar, AvatarUploader

  # # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable
         :trackable
         :confirmable

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :remember_me)
  end
  has_many :orders
end
  private
    def avatar_size_validation
  errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
end
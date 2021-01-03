class Productitem < ApplicationRecord
  mount_uploader :productimage, ProductImageUploader

  # # User Avatar Validation
  validates_integrity_of  :productimage
  validates_processing_of :productimage

  def productitem_params
    params.require(:productitem).permit(:productname, :description, :price, :brand, :productimage)
  end

end

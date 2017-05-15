class Owner < ApplicationRecord
mount_uploader :owner_image, ImageUploader
	validates_processing_of :owner_image
	validate :image_size_validation
private
	  def image_size_validation
	    errors[:owner_image] << "should be less than 10000KB" if owner_image.size > 10.0.megabytes
	end	
end

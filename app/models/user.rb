class User < ApplicationRecord

	mount_uploader :user_image, ImageUploader
	validates_processing_of :user_image
	validate :image_size_validation

	


	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
					 format: { with: VALID_EMAIL_REGEX },
					 uniqueness: { case_sensitive: false }

	has_secure_password

	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  	  BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

	private
	  def image_size_validation
	    errors[:user_image] << "should be less than 10000KB" if user_image.size > 10.0.megabytes
	end	
end

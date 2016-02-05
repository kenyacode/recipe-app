class Recipe < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end

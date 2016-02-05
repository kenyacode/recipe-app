# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

	# NOT Included the sprockets-rails helper for Rails 4+ asset pipleline compatibility
	# include Sprockets::Rails::Helper

  # Choose what kind of storage to use for this uploader:
  # storage :file
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

	# def cache_dir
	# 	"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
	# end


  # Create different versions of your uploaded files:
	version :medim do
		process :resize_to_fit => [400, 400]
	end

	version :small, from_version: :medium do
		process :resize_to_fit => [150, 150]
	end

  version :thumb, from_version: :small do
    process :resize_to_fit => [50, 50]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

end

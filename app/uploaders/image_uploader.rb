# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
# Process your uploads in the background by uploading directly to S3
	# include CarrierWaveDirect::Uploader

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

	# Choose what kind of storage to use for this uploader:
	# storage :file
	storage :fog

	include CarrierWave::MimeTypes
	process :set_content_type

  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_limit: [400, 400]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end

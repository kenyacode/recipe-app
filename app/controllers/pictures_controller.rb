class PicturesController < ApplicationController

	http_basic_authenticate_with :name => ENV['USER'], :password => ENV['PASSWORD']

	def index
		@pictures = Picture.all
	end

	def new
		@pictures = Picture.new
	end

	def create
		@pictures = Picture.new(picture_params)
		if @picture.save
			redirect_to root_path, notice: "the picture has been uploaded."
		else
			render "new"
		end

	end

	def destroy
		@pictures = Picture.find(params[:id])
		@picture.destroy
		redirect_to root_path, notice: "The picture has been deleted"
	end

	private

	def pictre_params
		params.require(:picture).permit(:name, :image)
	end
end

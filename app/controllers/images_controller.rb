class ImagesController < ApplicationController

	def create
		@album_image_count = Image.where(:album_id => image_params['album_id']).count
		unless @album_image_count > 26
			@image = Image.new(image_params)
			if @image.save!
				redirect_to albums_path, flash: {notice: "Image Uploaded Successfully."}
			else
				redirect_to albums_path, flash: {error: "Error while upoading image."}
			end
		else
    		redirect_to albums_path, flash: {error: "Already 25 Images are Uploaded in album"}
		end
	end

	private

	def image_params
		params.require(:image).permit(:name , :tag_line , :album_id, :image)
	end
end

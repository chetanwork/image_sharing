class HomepageController < ApplicationController
	layout 'home'

	def index
		@images = Image.last(25).reverse
	end

end

class HomeController < ApplicationController
	def index
	end	

	def about_us
		render :text => 'about us', :layout => true
	end	
end

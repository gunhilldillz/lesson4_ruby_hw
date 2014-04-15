class PostsController < ApplicationController

	def index

		@users = User.find(params[:user_id])
	
	end
	
end

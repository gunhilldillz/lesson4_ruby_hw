class UsersController < ApplicationController

	def index

		@users = User.all
		
		if @users.present?
		flash[:notice] = "Users display successfully."
		else
		flash[:alert] = "Sorry, there were no users to
		display."
		end
	
	end

	def show

		@user = User.find(params[:id])
		
	end

	def destroy

		
		@userss = User.find(params[:id])
		
		if @userss.destroy
		flash[:notice] = "User deleted successfully"
		p "Delete Successful"
		sleep(0.1)
		else
		flash[:alert] = "There was a problem deleting the user."
		end
		redirect_to action: "index"
	end

end

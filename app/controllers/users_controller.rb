class UsersController < ApplicationController
	before_action :authenticate_user!
	def show
		@user = current_user
end

	def edit
end

	def index
end

	def update
end

  private
  	def user_params
    	params.require(:user)
  	end

  	def ensure_correct_user
    		user = User.find(params[:id])
    	if user != current_user
     		redirect_to user_path(current_user)
   		end
  	end
end
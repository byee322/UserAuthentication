class SessionsController < ApplicationController
	def create
		@user = User.new(params[:user].permit!)
		redirect_to @user if @user.save 
	end
	def new
		@user = User.new
	end
	def destroy
		sign_out
		redirect_to '/'
	end
end
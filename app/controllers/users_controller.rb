class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user].permit!)
		redirect_to @user if @user.save 
	end

	def show
		@user = User.find(params[:id])
		session[:user_id] = @user.id
	end

end
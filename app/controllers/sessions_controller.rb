class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.where(email: params[:session][:email].downcase).first

		if user and user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to user_path(user)
			flash[:success] = "You have successfully logged in!"
		else
			flash.now[:danger] = "Email does not exist or password is wrong"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "You have logged out"
		redirect_to root_path
	end
end
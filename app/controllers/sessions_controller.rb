class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.where(email: params[:session][:email].downcase).first

		if user and user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to user_path(user)
			flash[:success] = "olá =)"
		else
			flash.now[:danger] = "Email não existe ou senha está incorreta"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "tchau =("
		redirect_to root_path
	end
end
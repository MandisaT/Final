class SessionsController < ApplicationController
  def new
  
  end


	  def create
		@user = User.where(username: params[:username]).first
		
		if @user && @user.password == params[:password].to_i
		# check if @user.password matches with params[:password]
		session[:user_id] = @user.id
		flash[:notice] = "Hey welcome lets plan this party"
		# once logged in redirect
		redirect_to users_path
		# else flash error and redirect
		else
		flash[:alert] =	"dont be tardy to the party whats your real email"
		redirect_to login_path
			end
		end

		def destroy
		session[:user_id] =nil 
		flash[:notice] = "Logged Out"
		redirect_to login_path
	end 
end 


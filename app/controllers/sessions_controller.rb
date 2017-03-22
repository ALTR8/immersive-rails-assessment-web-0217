class SessionsController < ApplicationController

  def new
  	@user = User.new
  end

  def create
  	@user = User.find(params[:id])
  	if (@user && user.authenticate(params[:account][:password]))
  		session[:user_id] = user.id
  		redirect_to user_path(@user)
  	else
  		flash[:error] = "Your username or password is not valid"
  		redirect_to signin_path
  	end
  end

end

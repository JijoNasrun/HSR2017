class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		flash[:success] = 'Succesfully login'
  		log_in user
  		redirect_to reports_index_url
  	elsif user
  		flash.now[:warning] = 'Invalid email/password combination'
  		render 'new'
  	else
  		flash.now[:danger] = 'User is not from registered list. Please contact admin'
  		render 'new'
  	end
  end
  def destroy
  	log_out
  	redirect_to root_url
  end
end

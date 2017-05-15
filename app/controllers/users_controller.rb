class UsersController < ApplicationController
	before_action :logged_in_user, only: [:edit, :update]
	before_action :correct_user,   only: [:edit, :update]
  def show 
  	@user = User.find(params[:id])
  end
  def new
  	@user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(user_params)
  		flash[:success] = "Sucessfully updated"
  		redirect_to @user
  	else 
  		render 'edit'
  	end
  end

  def create
  	@user = User.new(user_params)
  	if @user.save

  		flash[:success] = "Successfully Registered!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end
  



  private

  def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :user_image)
  end
end

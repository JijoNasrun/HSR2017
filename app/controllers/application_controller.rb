class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

   #confirms a logged in user
   def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
        #confirms the correct user
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end

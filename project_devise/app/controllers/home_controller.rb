class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to posts_path
    else
      redirect_to new_user_session_path
    end
  end
  def go_to_admin
    if current_user.superadmin_role?
      flash[:notice] = 'Access Granted. Welcome'
      redirect_to '/admin'
    else
      flash[:error] = 'Your not allowed to access admin panel'
      redirect_to '/'
    end
end

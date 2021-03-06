class SessionController < ApplicationController
  def new
  end
  
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to :controller => 'suggested', :action => 'user'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end

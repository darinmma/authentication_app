class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(:email => params[:login][:email])
    if user && user.authenticate(params[:login][:password])
        #sets a cookie, so our browser knows we are who we say we are
        session[:user_id] = user.id.to_s
        redirect_to users_path
    else
      render :new
    end
  end

  def destroy

  end
end

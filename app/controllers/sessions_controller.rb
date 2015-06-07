class SessionsController < ApplicationController
  def new
  end

  def create
      user = Snail.find_by(name: params[:login][:name])
    if user && user.authenticate(params[:login][:password])
      # make a new key in our session object called :user_id
      # which gets stored in a cookie in our browser
      session[:user_id] = user.id.to_s
      redirect_to snails_path
    else
      render :new
    end
  end

  def destroy
  	session.delete(:user_id)
    redirect_to login_path
  end
end 
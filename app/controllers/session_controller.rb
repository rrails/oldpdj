class SessionController < ApplicationController

  def new
  end

  def create
    user = User.where(:name => params[:name]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(restaurants_path)
    else
      redirect_to(signin_path)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end

end

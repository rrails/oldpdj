class UsersController < ApplicationController
  def profile
    binding.pry
  end

  def create
    @user = User.create(params[:user])
    session[:user_id] = @user.id
    respond_to do |format|
      format.html {redirect_to(profile_user_path(@user))}
    end
  end
end

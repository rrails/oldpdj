class PlatsController < ApplicationController
  before_filter :ensure_logged_in

  def index
    @plats = @current_user.plats
  end

  def edit
    @plat=Plat.find(params[:id])
  end

  def update
    @plat=Plat.find(params[:id])
    if (params[:img_delete])
      @plat.avatar = nil
    end
    @plat.update_attributes(params[:plat])
    @plat.price = @plat.price || 0
    render :json => @plat.as_json(:include => :restaurant)
  end

  def new
    @plat=Plat.new
  end

  def create
    @plat=Plat.create(params[:plat])
    @current_user.plats << @plat
    @current_user.save
    render :json => @plat.as_json(:include => :restaurant)
  end

  def destroy
    plat = Plat.find(params[:id])
    plat.destroy
    render :json => (plat)
  end
end
class PlatsController < ApplicationController
  def index
    @plats = Plat.all
  end

  def edit
    @plat=Plat.find(params[:id]).last
  end

  def new
    @plat=Plat.new
  end

  def create
    @plat=Plat.create(params[:plat])
    #need to associate plat with resautran
    @current_user.plats << @plat
    redirect_to(root_path)
  end
end
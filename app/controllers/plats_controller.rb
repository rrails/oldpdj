class PlatsController < ApplicationController
  def index
    @plats = Plat.all
  end
end

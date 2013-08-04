class RestaurantsController < ApplicationController
  # before_filter :ensure_logged_in #calls from application controller code to ensure you redirect home when not logged in (instead of an error)
  def index
    @restaurants = Restaurant.all
    @plats = Plat.all
  end
end

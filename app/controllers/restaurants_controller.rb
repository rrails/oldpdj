class RestaurantsController < ApplicationController
  # before_filter :ensure_logged_in #calls from application controller code to ensure you redirect home when not logged in (instead of an error)
  def index
    @restaurants = Restaurant.all

    @restaurantcuisine = @restaurants.uniq{|x| x.cuisine_id}
    @plats = Plat.where('release > ?'  , Time.zone.local(
        Time.zone.now.year,
        Time.zone.now.month,
        Time.zone.now.day - 2,
        11,
        0,
        0))
    # binding.pry
  end

  def edit
    @restaurant=Restaurant.find(params[:id])
  end

  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.update_attributes(params[:restaurant])
    redirect_to(restaurants_path)
  end

  def create
    @restaurant = Restaurant.create(params[:restaurant])
    @current_user = @restaurant
    session[:user_id] = @restaurant.id

    respond_to do |format|
      format.html {redirect_to(edit_user_path(@restaurant))}
    # binding.pry
      format.json {render :json => {url: (edit_user_path(@restaurant))}}

      # format.json {render :json => (edit_user_path(@restaurant))}
    end
  end
end

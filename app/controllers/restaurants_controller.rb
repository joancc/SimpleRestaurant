class RestaurantsController < ApplicationController
  before_action :set_params, only: [:index]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:notice] = "Restaurant created successfully."
      redirect_to(action: 'index')
    else
      render('new')
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      flash[:notice] = "Restaurant updated successfully."
      redirect_to(action: 'show')
    else
      render('form')
    end
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    redirect_to(action: 'index')

  end

  private

  def set_params
    @restaurants = Restaurant.all
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :phone)
  end
end

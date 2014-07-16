class RestaurantsController < ApplicationController
  before_action :set_params, only: [:index]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @user = User.find(@restaurant.user_id)
    @reservation = Reservation.new(restaurant_id: @restaurant[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if session[:user_id]
      @restaurant[:user_id] = session[:user_id]
      if @restaurant.save
        flash[:notice] = "Restaurant created successfully."
        redirect_to(action: 'index')
      else
        flash[:error] = @restaurant.errors.full_messages[0]
        render('new')
      end
    else
      flash[:error] = "Please login to create a new entry."
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
    params.require(:restaurant).permit(:name, :address, :description, :phone, :image, :menu)
  end
end

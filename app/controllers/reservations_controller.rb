class ReservationsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    if verify_recaptcha
      @reservation = Reservation.new(reservation_params)
      @reservation.restaurant_id = params[:restaurant_id]
      @user = User.find(@restaurant.user_id)

      if @reservation.save
        flash[:notice] = "Reservation successful."
        ReservationMailer.reservation_notification(@reservation.restaurant.user, @reservation).deliver
        redirect_to(restaurant_path(@restaurant))
      else
        render(show_restaurant_path)
      end
    else
      flash[:alert] = "Invalidad recaptcha. Try again."
      redirect_to :controller => 'restaurants', :action => 'show', :id => params[:restaurant_id]
    end
  end

  private 

  def reservation_params
    params.require(:reservation).permit(:time, :email, :name, :restaurant_id)
  end
end
class ReservationsController < ApplicationController
  before_filter :load_restaurant
  before_action :authenticate_user!
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to restaurants_path, notice: 'Reservation was successfully created.'
    else
      render 'restaurants/show'
    end
  end

  # def update
  #   if @reservation.update(reservation_params)
  #     redirect_to restaurants_path, notice: 'Reservation was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurants_path, notice: 'Reservation was successfully destroyed.'
  end

  private

    def load_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
    
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def reservation_params
      params.require(:reservation).permit(:booking, :user_id, :restaurant_id)
    end
end

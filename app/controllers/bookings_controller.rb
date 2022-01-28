class BookingsController < ApplicationController
  before_action :booking_params

  def new
   # @vehicle = Vehicle.find(params[:vehicle_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    # @booking.vehicle = Vehicle.find(params[:vehicle_id])
    # redirect_to @booking.vehicle, notice: "Your booking has been created..."
    redirect_to bookings_url
  end

  def index
    @bookings = Booking.all
  end

  private

  def booking_params
    #params.require(:booking).permit(:f_termino, :f_inicio, :vehicle_id)
  end
end

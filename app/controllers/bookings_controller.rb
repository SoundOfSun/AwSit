class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to dashboard_path
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:message)
  end

end



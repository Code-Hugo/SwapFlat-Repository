class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @property = Property.find(params[:property_id])
    @booking  = Booking.new
  end

  def create
    @property = Property.find(params[:property_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.property = @property
    if @booking.save!
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:id, :user_id, :property_id, :booking_date_from, :booking_date_to)
  end
end

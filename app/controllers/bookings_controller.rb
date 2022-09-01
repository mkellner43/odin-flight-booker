class BookingsController < ApplicationController
  def new
    @flight = Flight.find(flight_params[:id])
    @booking = Booking.new
    @passenger_form = flight_params[:passengers].to_i
    @passenger_form.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
          Passenger.where("booking_id = ?", @booking.id).each do | p |
            puts "#{p.inspect}"
          BookingMailer.with(id: p.id, booking_id: @booking.id, flight_id: @booking.flight_id).confirmation_email.deliver_now
        end
      redirect_to booking_path(@booking), notice: 'Successfully booked!'
    else
      render :new, alert: 'Something went wrong :('
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
    @passengers = @booking.passengers
  end

  private

  def flight_params
    params.require(:flight).permit(:id, :passengers)
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[name email])
  end
end

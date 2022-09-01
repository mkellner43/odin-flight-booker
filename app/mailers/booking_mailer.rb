class BookingMailer < ApplicationMailer
  default from: "nofications@example.com"

  def confirmation_email
    @passenger = Passenger.find(params[:id])
    @booking = Booking.find(params[:booking_id])
    @flight = Flight.find(params[:flight_id])
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end 
end

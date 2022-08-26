class FlightsController < ApplicationController
  def index
    @flight = params[:flight] ? Flight.new(flight_params) : Flight.new
    if params[:flight]
      @available_flights = Flight.where('arrival_id = ?', flight_params[:arrival_id]).where('departure_id = ?', flight_params[:departure_id]).where(
        'start like ?', '%' + flight_params[:start] + '%'
      )

      flash.now[:alert] = 'No results found' if @available_flights.empty?
    end
    @airports = Airport.all.order(:airport_code)
  end

  private

  def flight_params
    params.require(:flight).permit(:id, :start, :duration, :arrival_id, :departure_id, :passengers)
  end
end

class AddBookingRefToFlight < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :booking, foreign_key: true
  end
end

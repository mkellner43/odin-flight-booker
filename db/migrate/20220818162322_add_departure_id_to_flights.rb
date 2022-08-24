class AddDepartureIdToFlights < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :departure, references: :airports, null: false, index: true
    add_foreign_key :flights, :airports, column: :departure_id
  end
end

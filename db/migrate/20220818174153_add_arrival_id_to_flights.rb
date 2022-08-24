class AddArrivalIdToFlights < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :arrival, references: :airports, null: false, index: true 
    add_foreign_key :flights, :airports, column: :arrival_id
  end
end

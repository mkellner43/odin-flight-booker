class AddEmailToPassengers < ActiveRecord::Migration[7.0]
  def change
    add_column :passengers, :email, :string
  end
end

class Flight < ApplicationRecord
  attr_accessor :passengers

  belongs_to :departure, class_name: 'Airport'
  belongs_to :arrival, class_name: 'Airport'
  has_many :bookings
  has_many :passengers, through: :bookings
end

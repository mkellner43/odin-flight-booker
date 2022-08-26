# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
airport_one = Airport.create(airport_code: "SFO")
airport_two = Airport.create(airport_code: "NYC")
airport_three = Airport.create(airport_code: "DFW")
airport_four = Airport.create(airport_code: "LAX")


Flight.create(start: DateTime.strptime("09/17/2022 12:00", "%m/%d/%Y %H:%M"), duration: 240, arrival_id: 3, departure_id: 4)
Flight.create(start: DateTime.strptime("09/17/2022 15:00", "%m/%d/%Y %H:%M"), duration: 320, arrival_id: 3, departure_id: 4)
Flight.create(start: DateTime.strptime("09/17/2022 2:00", "%m/%d/%Y %H:%M"), duration: 320, arrival_id: 3, departure_id: 4)
Flight.create(start: DateTime.strptime("09/17/2022 5:00", "%m/%d/%Y %H:%M"), duration: 320, arrival_id: 3, departure_id: 4)
Flight.create(start: DateTime.strptime("09/17/2022 20:00", "%m/%d/%Y %H:%M"), duration: 320, arrival_id: 3, departure_id: 4)
Flight.create(start: DateTime.strptime("09/17/2022 9:00", "%m/%d/%Y %H:%M"), duration: 320, arrival_id: 3, departure_id: 4)
Flight.create(start: DateTime.strptime("09/01/2022 17:00", "%m/%d/%Y %H:%M"), duration: 240, arrival_id: 1, departure_id: 4)
Flight.create(start: DateTime.strptime("10/31/2022 05:00", "%m/%d/%Y %H:%M"), duration: 324, arrival_id: 2, departure_id: 3)
Flight.create(start: DateTime.strptime("11/01/2022 20:00", "%m/%d/%Y %H:%M"), duration: 140, arrival_id: 3, departure_id: 4)
Flight.create(start: DateTime.strptime("09/05/2022 16:00", "%m/%d/%Y %H:%M"), duration: 533, arrival_id: 2, departure_id: 1)
Flight.create(start: DateTime.strptime("09/12/2022 4:00", "%m/%d/%Y %H:%M"), duration: 155, arrival_id: 4, departure_id: 2)

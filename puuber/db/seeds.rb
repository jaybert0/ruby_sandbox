puts "Deleting old trip data..."
Trip.destroy_all

puts "Deleting old driver data..."
Driver.destroy_all

puts "Deleting old passenger data..."
Passenger.destroy_all



puts "Creating Drivers"
driver1 = Driver.create(full_name: "Joe Moe", rating: 2, money: 100, driving_status: false)
driver2 = Driver.create(full_name: "Susan Cool", rating: 5, money: 100, driving_status: false)
driver3 = Driver.create(full_name: "Kyle Nice", rating: 5, money: 100, driving_status: false)


puts "Creating Passengers"
passenger1 = Passenger.create({full_name: "Michael Scott", phone_num: "555-555-5555", rating: 2})
passenger2 = Passenger.create({full_name: "Pam Beasly", phone_num: "555-111-1111", rating: 1})
passenger3 = Passenger.create({full_name: "Karen Filippelli", phone_num: "333-333-3333", rating: 5})
passenger4 = Passenger.create({full_name: "Dwight Schrute", phone_num: "none", rating: 2})
passenger5 = Passenger.create({full_name: "Holly Flax", phone_num: "123-456-7890", rating: 5})


puts "Creating trips"
trip1 = Trip.create({trip_start: "229 John Lane Hudson, NH 03051", trip_end: "229 John Lane Hudson, NH 03051", distance: 100, driver_id: driver1.id, passenger_id: passenger1.id})
trip2 = Trip.create({trip_start: "229 John Lane Hudson, NH 03051", trip_end: "229 John Lane Hudson, NH 03051", distance: 23, driver_id: driver1.id, passenger_id: passenger3.id})
trip3 = Trip.create({trip_start: "229 John Lane Hudson, NH 03051", trip_end: "229 John Lane Hudson, NH 03051", distance: 1, driver_id: driver2.id, passenger_id: passenger1.id})
trip4 = Trip.create({trip_start: "229 John Lane Hudson, NH 03051", trip_end: "229 John Lane Hudson, NH 03051", distance: 44, driver_id: driver2.id, passenger_id: passenger4.id})

class Driver < ActiveRecord::Base
    has_many :trips
    has_many :passengers, through: :trips

    def start_trip(passenger, starting_address)
        self.driving_status = true
        Trip.create(trip_start: starting_address, trip_end: "", distance: 0, passenger_id: passenger.id, driver_id: self.id)
    
    end

    def end_trip(passenger, trip, end_address)
        self.driving_status = false
        trip.update(trip_end: end_address, distance: rand(26), passenger_id: passenger.id)
    end

    def self.highest_rated
        self.all.where('rating >= 4')
    end

    def self.most_traveled
        self.all.max_by {|v| v.trips.sum(:distance)}
    end
    
end
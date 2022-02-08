class Trip < ActiveRecord::Base
    belongs_to :passenger
    belongs_to :driver

    def cancel_trip
        self.destroy
    end

    def driver_info
        "#{driver.full_name} - #{driver.rating} - #{driver.trips.sum(:distance)}"
    end
end
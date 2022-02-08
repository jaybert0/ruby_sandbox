class Passenger < ActiveRecord::Base
    has_many :trips
    has_many :drivers, through: :trips

    def self.highest_rated       
        self.all.where('rating >= 4')
    end

    def self.contact_data
        self.all.map do |data|
            data.phone_num
        end
    end
end
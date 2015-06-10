class Reservation < ActiveRecord::Base
	belongs_to :dish
	belongs_to :profile
end

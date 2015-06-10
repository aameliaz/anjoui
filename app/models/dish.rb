class Dish < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
	has_many :reservations
end

class Table < ActiveRecord::Base
	belongs_to :reservation
	belongs_to :restaurant
end

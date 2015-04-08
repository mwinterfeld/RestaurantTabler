class Table < ActiveRecord::Base
	has_one :reservation
	has_one :restaurant, through: :reservation
end

class Reservation < ActiveRecord::Base
	belongs_to :users
	belongs_to :restaurants
	belongs_to :table
end

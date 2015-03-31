class Reservation < ActiveRecord::Base
	belongs_to :users
	belongs_to :restaurants
	def tables
		return 1
	end
end
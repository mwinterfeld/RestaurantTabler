class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :tables
	belongs_to :admin
end

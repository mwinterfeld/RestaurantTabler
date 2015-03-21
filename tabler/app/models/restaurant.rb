class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :tables, through: :reservations
	belongs_to :admin
end

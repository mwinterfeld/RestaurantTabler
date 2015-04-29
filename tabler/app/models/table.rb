class Table < ActiveRecord::Base
	has_many :reservations
	belongs_to :restaurant

	accepts_nested_attributes_for :restaurant
end

class Table < ActiveRecord::Base
	belongs_to :reservation
	belongs_to :restaurant

	accepts_nested_attributes_for :restaurant
end

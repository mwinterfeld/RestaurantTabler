class Restaurant < ActiveRecord::Base
	# For attached logo image
	has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ":style/missing.png"
	validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/

	# Validations
	validates :name, :presence => true
	validates :category, :presence => true

	# Associations
	has_many :reservations
	has_many :tables
	belongs_to :admin
end

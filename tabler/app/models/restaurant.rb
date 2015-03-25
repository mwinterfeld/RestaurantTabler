class Restaurant < ActiveRecord::Base
	has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ":style/missing.png"
	validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
	has_many :reservations
	has_many :tables, through: :reservations
end

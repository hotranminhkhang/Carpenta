class Collection < ActiveRecord::Base

	attr_accessible :title, :description, :active, :permalink
	# Relationship
	has_many :products

	# Validations
	validates_presence_of :title, :permalink


end

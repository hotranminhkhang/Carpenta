class OrderLineItem < ActiveRecord::Base

	# Relationship
	belongs_to :product
	belongs_to :order

end

class OrderLineItem < ActiveRecord::Base
	attr_accessible :product, :product_id, :order, :cart, :quantity

	# Relationship
	belongs_to :product
	belongs_to :order
	belongs_to :cart

	def total_price
		product.price * quantity
	end
	
end

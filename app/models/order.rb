class Order < ActiveRecord::Base

	# Relationship
	has_many :order_line_items, dependent: :destroy
	has_many :products, :through => :order_line_items
end

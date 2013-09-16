class Cart < ActiveRecord::Base
  # attr_accessible :title, :body

	# Relationship
	has_many :order_line_items, dependent: :destroy
	has_many :products, :through => :order_line_items


	def add_product(product_id)
		current_item = order_line_items.find_by_product_id(product_id)
		if current_item
			current_item.quantity += 1
		else
			current_item = order_line_items.build(product_id: product_id)

		end
		current_item
	end

	def total_price
		if order_line_items.any?
			return order_line_items.to_a.sum{ |line| line.total_price}	
		end		
		return 0
	end

	def total_items
		if order_line_items.any?
			return order_line_items.to_a.sum{ |line| line.quantity}
		end		
		return 0
	end

	
end
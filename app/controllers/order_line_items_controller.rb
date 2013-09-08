class OrderLineItemsController < ApplicationController

  # before_filter :fetch_collection_menu
  # before_filter :randomize_background

  
	def create
		@cart = current_cart
		product = Product.find(params[:product_id])	
		@order_line_item = @cart.add_product(product.id)
		
		respond_to do |format|
			if @order_line_item.save
				format.html{redirect_to @order_line_item.cart}
				format.json{render json: @order_line_item,
					status: :created, location: @order_line_item}
				format.js
			else
				format.html{ render action: 'new'}
				format.json{ render json: @order_line_item.errors,
					status: :unprocessable_entity}
			end
		end
	end

end

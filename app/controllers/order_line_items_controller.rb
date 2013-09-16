class OrderLineItemsController < ApplicationController

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


	def destroy
    @order_line_item = OrderLineItem.find(params[:id])
    @order_line_item.destroy

    respond_to do |format|
      format.html { redirect_to order_line_items_url }
      format.json { head :no_content }
      format.js
    end
  end


  def update
  	@order_line_item = OrderLineItem.find(params[:id])

  	respond_to do |format|
  		if @order_line_item.update_attributes(:quantity => params[:quantity])
  			format.html { redirect_to @order_line_item.cart}
  			format.json { head :no_content }
  			format.js
  		else
				format.html { render action: "edit" }
        format.json { render json: @order_line_item.errors, status: :unprocessable_entity }
  		end
  	end
  end

  # def update
  #   @post = Post.find(params[:id])
  #   respond_to do |format|
  #     if @post.update_attributes(params[:post])
  #       format.html { redirect_to @post, notice: 'Post was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @post.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

end

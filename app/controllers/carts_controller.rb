class CartsController < InheritedResources::Base
  
	# before_filter :fetch_collection_menu
 #  before_filter :randomize_background

  def show
  	begin
  		@cart = Cart.find(params[:id])
  	rescue ActiveRecord::RecordNotFound
  		logger.error "Attempt to access invalid cart #{params[:id]}"
  		flash[:notice] = "Invalid cart"
  		redirect_to controller: 'shop', action: 'collection', collection: 'all'
  	else
  		respond_to do |format|
  			format.html # show.html.erb
  			format.json { render json: @cart }
  		end
  	end
  end

  def destroy
  	# @cart = current_cart
  	@cart.destroy
  	# session[:cart_id] = nil

  	respond_to do |format|
  	# 	flash[:notice] = "Your cart is currently empty"
  	# 	format.html {redirect_to controller: 'shop', action: 'collection', collection: 'all'}
      format.html{ redirect_to carts_url}
  		format.json { head :no_content}
  	end	
  end


  def showCart
    @cart = current_cart
  end

  def removeCartItem
    line = OrderLineItem.find_by_id(params[:order_line_items])
    line.destroy
    redirect_to action: 'showCart'
  end

end

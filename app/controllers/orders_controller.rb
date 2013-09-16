class OrdersController < ApplicationController

	layout 'checkout'

  def showOrder
    @order = Order.where(:permalink => params[:id]).first
    if @order == nil
      flash[:notice] = "This order does not exist!!!"
      redirect_to root_path 
    end
  end

	def new
		@cart = current_cart
		if @cart.order_line_items.empty?
			flash[:notice] = "Your cart is empty"
			redirect_to root_path	
			return
		end	

		@order = Order.new
		respond_to	do |format|
			format.html #new.html.erb
			format.json { render json: @order }
		end
	end

  def create
    @order = Order.new(params[:order])
    @order.add_order_line_items_from_cart(current_cart)
    @order.permalink = SecureRandom.urlsafe_base64
    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        OrderNotifier.received(@order).deliver

        format.html { 
          flash[:notice] = 'order was successfully created.'
          redirect_to root_path 
         }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end


end

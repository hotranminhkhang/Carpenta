class OrdersController < ApplicationController

	layout 'checkout'


	def index
    @orders = Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json

  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end


	def new
		@cart = current_cart
		if @cart.order_line_items.empty?
			flash[:notice] = "Your cart is empty"
			redirect_to controller: 'shop', action: 'collection', collection: 'all'	
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

    respond_to do |format|
      if @order.save
        cart = current_cart
        cart.destroy;
        format.html { 
          flash[:notice] = 'order was successfully created.'
          redirect_to controller: 'shop', action: 'collection', collection: 'all' 
         }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end


end

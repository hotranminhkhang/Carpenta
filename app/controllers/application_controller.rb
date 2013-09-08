class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :fetch_collection_menu
  before_filter :randomize_background
  before_filter :fetch_cart_summary

  private

  def current_cart
  	Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
  	cart = Cart.create
  	session[:cart_id] = cart.id
  	cart
  end

  
  # fetch collection menu
  def fetch_collection_menu
    @collections = Collection.where(:active => true)
  end

  def randomize_background
    backgrounds = BackgroundImage.where(:place => "shop")
    @background = backgrounds[rand(backgrounds.size)-1]
  end
  
  def fetch_cart_summary
    @cart = current_cart
  end
end

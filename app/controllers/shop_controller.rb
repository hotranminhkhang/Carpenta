class ShopController < ApplicationController

  # before_filter :fetch_collection_menu
  # before_filter :randomize_background
  

  def collection
    # TODO: shop/all option to display all products.

  	@collection = Collection.where(:permalink => params[:collection], :active => true).first
  	if @collection == nil
  		flash[:notice] = "This collection does not exist!!!"
    else
      @products = Product.where(:collection_id => @collection.id , :active => true).order('created_at DESC').page(params[:page]).per_page(9)

      if @products.count == 0
        flash[:notice] = "There is temporarily no product in this collection"
      else
    		flash[:notice] = nil
      end
  	end

  end
	


  def productDetail
  	@product = Product.where(:permalink => params[:product], :active => true).first
    # TODO: Validation for product URL
  end


end


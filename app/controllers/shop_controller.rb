class ShopController < ApplicationController

  def collection
  	@collection = Collection.where(:permalink => params[:collection], :active => true).first
  	if @collection == nil
  		flash[:notice] = "There is temporarily no product in this collection"
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

  end

end

class AddCartidToOrderLineItems < ActiveRecord::Migration
  def change
  	add_column :order_line_items, :cart_id, :integer
 
  end
end

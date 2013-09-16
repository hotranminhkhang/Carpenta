class CreateOrderLineItems < ActiveRecord::Migration
  def change
    create_table :order_line_items do |t|

    	t.references(:order)
    	t.references(:cart)
    	t.references(:product)

    	t.integer(:quantity, :default => 1)
    	t.integer(:price, :default => 0)

      t.timestamps
    end
  end
end

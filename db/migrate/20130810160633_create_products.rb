class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

    	t.references(:collection)
    	
    	t.string   :title,             :default => '',     :null => false
    	t.string   :product_code
    	t.string   :serial_no
    	t.text     :short_description, :default => '',     :null => false
    	t.text     :long_description
    	t.integer  :price,             :default => 0,      :null => false
        t.string   :status
    	t.boolean  :active,            :default => true
    	t.string   :permalink,         :default => '',     :null => false
    	t.string   :image_url_01,      :default => '',     :null => false
    	t.string   :image_url_02
    	t.string   :image_url_03
    	t.string   :image_url_04
    	t.string   :image_url_05


      t.timestamps
    end
  end
end

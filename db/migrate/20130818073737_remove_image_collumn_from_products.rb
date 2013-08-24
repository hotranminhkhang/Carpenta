class RemoveImageCollumnFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :image_url_01
  	remove_column :products, :image_url_02
  	remove_column :products, :image_url_03
  	remove_column :products, :image_url_04
  	remove_column :products, :image_url_05
  end
end

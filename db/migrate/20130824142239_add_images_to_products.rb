class AddImagesToProducts < ActiveRecord::Migration
  def self.up
  	add_attachment :products, :image_01
  	add_attachment :products, :image_02
  	add_attachment :products, :image_03
  	add_attachment :products, :image_04
  	add_attachment :products, :image_05
  end

  def self.down
  	remove_attachment :products, :image_01
  	remove_attachment :products, :image_02
  	remove_attachment :products, :image_03
  	remove_attachment :products, :image_04
  	remove_attachment :products, :image_05
  end
end

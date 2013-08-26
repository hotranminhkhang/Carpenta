class CreateBackgroundImages < ActiveRecord::Migration
  def self.up
    create_table :background_images do |t|
    	t.string :place
      t.timestamps
    end

    add_attachment :background_images, :image
  end

  def self.down
  	drop_table :background_images
  end
end

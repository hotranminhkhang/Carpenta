class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|

    	t.string		:title, 			:null => false, :default => ''
    	t.text			:description,									:default => ''
    	t.boolean		:active, 											:default => true
    	t.string		:permalink, 	:null => false,	:default => ''

      t.timestamps
    end
  end
end

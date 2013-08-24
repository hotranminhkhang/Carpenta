class Product < ActiveRecord::Base
	attr_accessible :title, :collection_id, :product_code, :serial_no, :short_description, :long_description, :price, :status, :permalink, :image_01, :image_02, :image_03, :image_04, :image_05
	# Relationship
	belongs_to :collection
	has_many :order_line_items
	has_many :orders, :through => :order_line_items

	# Paperclip
	has_attached_file :image_01
	has_attached_file :image_02
	has_attached_file :image_03
	has_attached_file :image_04
	has_attached_file :image_05


	# Validations
	validates_presence_of :title, :collection_id, :short_description, :price, :permalink

	validates_attachment_presence :image_01


end

class Order < ActiveRecord::Base
	attr_accessible :full_name, :phone, :email, :address_line_1, :address_line_2, :city, :country, :payment_type, :status, :delivery_date, :notes

	COUNTRIES = {'Vietnam' => 'vnm'}
	CITIES = {'Ho Chi Minh' => 'hochiminh'}
	PAYMENT_TYPES = {'Pay On Delivery' => 0}
	# Relationship
	has_many :order_line_items, dependent: :destroy
	has_many :products, :through => :order_line_items


	# Validations
	validates_presence_of :full_name, :message => "is required"
	validates_presence_of :phone, :message => "is required"
	validates_presence_of :email, :message => "is required"
	validates_presence_of :address_line_1, :message => "is required"
	validates_presence_of :city, :message => "is required"
	validates_presence_of :country, :message => "is required"

	validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
	validates :country, inclusion: COUNTRIES.values
	validates :city, inclusion: CITIES.values

end


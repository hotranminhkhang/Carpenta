class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|

    	# t.references(:user)
      t.string(:permalink)
      t.string(:full_name)
      t.string(:phone)
      t.string(:email)
      t.string(:address_line_1)
      t.string(:address_line_2)
      t.string(:city)
      t.string(:country)
      t.string(:payment_type)
    	t.string(:status)
    	t.date(:delivery_date)
    	t.text(:notes)

      t.timestamps
    end
  end
end

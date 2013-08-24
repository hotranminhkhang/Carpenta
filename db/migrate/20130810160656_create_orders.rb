class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|

    	t.references(:user)

    	t.string(:status)
    	t.date(:delivery_date)
    	t.text(:delivery_address)
    	t.text(:notes)

      t.timestamps
    end
  end
end

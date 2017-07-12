class CreateRtos < ActiveRecord::Migration
  def change
    create_table :rtos do |t|
      t.string :code
      t.string :vehicle_number
      t.string :registration_office
      t.string :address
      t.string :phone_number
      t.integer :district_id
      t.integer :state_id

      t.timestamps null: false
    end
  end
end

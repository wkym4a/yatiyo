class CreateEmptyRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :empty_rooms do |t|
      t.integer :status , null: false, default: 0
      t.integer :arrangement , null: false
      t.string :name , null: false, limit: 40
      t.string :number , null: false, limit: 20
      t.integer :leave_status , null: false, default: 0
      t.date :day_to_leave
      t.string :benefit , null: false
      t.string :day_to_enter , null: false
      t.float :area , null: false
      t.integer :rent , null: false
      t.integer :common_fee
      t.integer :thanks_money_status , null: false, default: 0
      t.integer :thanks_money
      t.float :thanks_money_month
      t.integer :deposit_status , null: false, default: 0
      t.integer :deposit
      t.float :deposit_month
      t.string :station, null: false, limit: 120
      t.integer :parking_status , null: false, default: 0
      t.integer :parking
      t.integer :pet , null: false
      t.integer :gas , null: false
      t.string :memo , null: false
      t.string :key , null: false

      t.timestamps
    end
  end
end

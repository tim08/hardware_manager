class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.integer :kind
      t.string :brand
      t.string :model
      t.string :serial_number

      t.timestamps
    end
  end
end

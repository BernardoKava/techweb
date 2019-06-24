class CreateServerAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :server_accessories do |t|
      t.integer :accessory_id
      t.integer :server_record_id
      t.text :notes

      t.timestamps
    end
  end
end

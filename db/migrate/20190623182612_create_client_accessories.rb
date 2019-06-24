class CreateClientAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :client_accessories do |t|
      t.integer :client_record_id
      t.integer :accessory_id
      t.text :notes

      t.timestamps
    end
  end
end

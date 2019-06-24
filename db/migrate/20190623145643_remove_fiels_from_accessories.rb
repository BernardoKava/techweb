class RemoveFielsFromAccessories < ActiveRecord::Migration[5.2]
  def change
    remove_column :accessories, :server_record_id, :integer
    remove_column :accessories, :client_record_id, :integer
  end
end

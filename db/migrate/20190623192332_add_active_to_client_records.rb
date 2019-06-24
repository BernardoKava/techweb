class AddActiveToClientRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :client_records, :active, :boolean
    add_column :client_records, :on_hold, :boolean
  end
end

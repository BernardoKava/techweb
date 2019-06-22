class AddBooleansToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :homeintel_access, :boolean
    add_column :users, :cfanalyser_access, :boolean
    add_column :users, :pettycash_access, :boolean
    add_column :users, :techweb_access, :boolean
  end
end

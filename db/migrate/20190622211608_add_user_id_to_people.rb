class AddUserIdToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :User_id, :integer
  end
end

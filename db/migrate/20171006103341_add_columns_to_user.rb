class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
     add_column :users, :counsellor, :boolean, default: false
     add_column :users, :address, :string
     add_column :users, :profile_description, :text
  end
end

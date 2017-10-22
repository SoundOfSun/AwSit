class RenameTypeIntoContent < ActiveRecord::Migration[5.1]
  def change
    rename_column :skills, :type, :content
    # order: table name, column to change, new name
  end
end

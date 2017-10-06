class RenameCounsellorToBabysitter < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :counsellor, :babysitter
  end
end

class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :type
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end

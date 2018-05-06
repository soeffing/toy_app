class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.integer :user_id

      t.timestamps
    end
    add_index :profiles, :user_id, unique: true
  end
end

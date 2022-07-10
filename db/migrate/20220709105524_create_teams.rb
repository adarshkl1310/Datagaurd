class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.references :employee, null: false, foreign_key: true
      t.string :restaurant_name
      t.timestamps
    end
  end
end

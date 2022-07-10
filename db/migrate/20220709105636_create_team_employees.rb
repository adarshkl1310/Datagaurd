class CreateTeamEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :team_employees do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.timestamps
    end
  end
end

class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.integer :league_id
      t.integer :team_1_id
      t.integer :team_2_id
      t.datetime :date

      t.timestamps
    end
  end
end

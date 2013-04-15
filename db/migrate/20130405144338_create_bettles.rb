class CreateBettles < ActiveRecord::Migration
  def change
    create_table :bettles do |t|
      t.integer :maker_id
      t.integer :taker_id
      t.integer :fixture_id
      t.boolean :free_bet
      t.decimal :win_maker, :precision => 15, :scale => 0
      t.decimal :win_taker, :precision => 15, :scale => 0
      t.boolean :accepted
      t.datetime :expiration_time
      t.integer :bettle_status_id, :default => 1
      t.integer :taker_outcome_id
      t.integer :maker_outcome_id

      t.timestamps
    end
  end
end



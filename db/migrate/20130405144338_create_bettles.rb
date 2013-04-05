class CreateBettles < ActiveRecord::Migration
  def change
    create_table :bettles do |t|
      t.integer :maker_id
      t.integer :taker_id
      t.integer :fixture_id
      t.boolean :free_bet
      t.decimal :win_maker
      t.decimal :win_taker
      t.boolean :accepted
      t.datetime :expire_time

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :provider
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_token_expires_at
      #t.string :username
      #t.string :email
      #t.string :first_name
      #t.string :last_name
      t.decimal :balance

      t.timestamps
    end
  end
end

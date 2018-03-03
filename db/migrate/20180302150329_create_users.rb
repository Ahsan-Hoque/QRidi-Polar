class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :authorization_token
      t.integer :polar_user_id
      t.string :polar_email
      t.timestamps
    end
  end
end

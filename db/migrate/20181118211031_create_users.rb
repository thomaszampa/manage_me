class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :relationship_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :access_token
      t.string :artist_name
      t.boolean :manager

      t.timestamps
    end
  end
end

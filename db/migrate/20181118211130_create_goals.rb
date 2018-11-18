class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.integer :relationship_id
      t.string :subject
      t.string :body
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end

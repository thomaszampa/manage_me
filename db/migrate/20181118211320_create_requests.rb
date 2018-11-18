class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :goals_id
      t.integer :relationship_id
      t.string :body
      t.datetime :time_stamp
      t.datetime :due_date
      t.boolean :over_due
      t.boolean :complete

      t.timestamps
    end
  end
end

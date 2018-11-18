class CreateCategoryRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :category_requests do |t|
      t.integer :category_id
      t.integer :request_id

      t.timestamps
    end
  end
end

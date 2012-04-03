class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :developer_id
      t.string :type
      t.string :api_key
      t.string :push_url

      t.timestamps
    end
  end
end

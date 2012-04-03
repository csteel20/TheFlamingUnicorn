class CreateDeveloperNotifications < ActiveRecord::Migration
  def change
    create_table :developer_notifications do |t|
      t.integer :notifcation_id
      t.integer :developer_id

      t.timestamps
    end
  end
end

class RenameColumn < ActiveRecord::Migration
  def up
    rename_column :developer_notifications, :notifcation_id, :notification_id
  end

  def down
    rename_column :developer_notifications, :notification_id, :notifcation_id
  end
end

class CreateDeveloperSites < ActiveRecord::Migration
  def change
    create_table :developer_sites do |t|
      t.integer :site_id
      t.integer :developer_id

      t.timestamps
    end
  end
end

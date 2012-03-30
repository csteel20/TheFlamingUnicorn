class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.string :name
      t.text :content
      t.integer :site_id
      t.integer :priority

      t.timestamps
    end
  end
end

class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.text :api_key
      t.integer :threshold
      t.string :push_url

      t.timestamps
    end
  end
end

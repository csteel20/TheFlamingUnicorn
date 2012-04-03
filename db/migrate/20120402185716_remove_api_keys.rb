class RemoveApiKeys < ActiveRecord::Migration
  def change
    remove_column :developers, :push_url
    remove_column :sites, :api_key
  end
end

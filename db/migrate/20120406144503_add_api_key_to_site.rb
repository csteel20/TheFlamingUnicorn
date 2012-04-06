class AddApiKeyToSite < ActiveRecord::Migration
  def change
    add_column :sites, :api_key, :string
  end
end

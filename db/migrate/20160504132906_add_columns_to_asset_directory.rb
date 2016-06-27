class AddColumnsToAssetDirectory < ActiveRecord::Migration
  def change
  	add_column :asset_directories, :assignee, :string
  end
end

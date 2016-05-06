class AddColumnsToAssetDirectory < ActiveRecord::Migration
  def change
  	add_column :asset_directories, :assignee, :string
  	add_column :asset_directories, :category, :string
  end
end

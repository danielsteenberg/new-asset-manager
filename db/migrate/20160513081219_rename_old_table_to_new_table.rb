class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
  	rename_table :asset_directories, :assets
  end
end

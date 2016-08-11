class AddAssetRefToLoans < ActiveRecord::Migration
  def change
    add_reference :loans, :asset, index: true
    add_foreign_key :loans, :assets
  end
end

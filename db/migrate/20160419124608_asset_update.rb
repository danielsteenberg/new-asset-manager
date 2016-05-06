class AssetUpdate < ActiveRecord::Migration
  def change
    add_column :assets, :item_model, :string
    add_column :assets, :item_description, :string
    add_column :assets, :item_price, :integer
    add_column :assets, :item_attributes, :string
  end
end

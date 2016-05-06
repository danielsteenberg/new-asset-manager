class CreateAssetDirectories < ActiveRecord::Migration
  def change
    create_table :asset_directories do |t|
      t.string :item_model
      t.string :item_description
      t.integer :item_price
      t.string :item_attributes

      t.timestamps null: false
    end
  end
end

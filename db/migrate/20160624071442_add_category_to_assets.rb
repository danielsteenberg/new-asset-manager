class AddCategoryToAssets < ActiveRecord::Migration
  def change
    add_reference :assets, :category, index: true
    add_foreign_key :assets, :categories
  end
end

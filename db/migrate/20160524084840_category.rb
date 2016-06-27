class Category < ActiveRecord::Migration
  def change
    create_table :category do |t|
      t.string :category
      t.timestamps
    end
  end
end

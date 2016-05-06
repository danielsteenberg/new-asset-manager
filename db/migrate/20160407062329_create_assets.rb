class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
    	t.integer :employees_id
    	t.integer :laptops_id

      t.timestamps null: false
    end
  end
end

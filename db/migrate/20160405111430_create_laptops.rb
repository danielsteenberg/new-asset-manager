class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.string :laptop_details
      t.string :laptop_model
      t.string :date_of_purchase
      t.string :assignee

      t.timestamps null: false
    end
  end
end

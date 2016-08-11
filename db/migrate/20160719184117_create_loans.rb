class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :employee
      t.string :item
      t.date :dateBorrowed
      t.date :dateReturned
      t.string :status

      t.timestamps null: false
    end
  end
end

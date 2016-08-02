class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :employee
      t.string :item
      t.string :dateBorrowed
      t.string :dateReturned
      t.string :status

      t.timestamps null: false
    end
  end
end

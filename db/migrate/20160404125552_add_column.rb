class addColumn < ActiveRecord::Migration
  def change
  	add_column :employees, :department, :string
  end
end

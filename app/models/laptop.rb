class Laptop < ActiveRecord::Base
	has_many :assets
	has_many :employees, :through => :assets
end

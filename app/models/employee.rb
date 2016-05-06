class Employee < ActiveRecord::Base
	has_many :assets
	has_many :asset_directories
	has_many :laptops, :through => :assets
end

class Employee < ActiveRecord::Base
	has_many :asset_directories
end

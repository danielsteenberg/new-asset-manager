class Asset < ActiveRecord::Base
	belongs_to :employee
	belongs_to :laptop
end

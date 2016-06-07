class Asset < ActiveRecord::Base
  belongs_to :employee
  has_many :categories
end

class Item < ActiveRecord::Base
  attr_accessible :description, :name
  validates :name, uniqueness: true, presence: true
end

class Category < ActiveRecord::Base
  has_many :script_categories
  has_many :scripts, through: :script_categories
     
  validates :name, presence: true
end
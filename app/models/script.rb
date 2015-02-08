class Script < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :comments
  has_many :script_categories
  has_many :categories, through: :script_categories
    
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end

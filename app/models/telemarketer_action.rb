class TelemarketerAction < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :comments
  has_many :labels
  has_many :tags
    
  validates :label, presence: true
  validates :text_field, presence: true, length: {minimum: 10}
end
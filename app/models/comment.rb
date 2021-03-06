class Comment < ActiveRecord::Base
    belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
    belongs_to :script
    
    validates :text, presence: true
end
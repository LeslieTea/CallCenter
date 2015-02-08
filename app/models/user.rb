class User < ActiveRecord::Base
  has_many :scripts
  has_many :comments
     
  validates :username, presence: true, uniqueness: true
 end
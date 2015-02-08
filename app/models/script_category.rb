class ScriptCategory < ActiveRecord::Base
  belongs_to :script
  belongs_to :category
end
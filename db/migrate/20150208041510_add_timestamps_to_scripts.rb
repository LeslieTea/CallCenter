class AddTimestampsToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :created_at, :datetime
    add_column :scripts, :updated_at, :datetime
  end
end

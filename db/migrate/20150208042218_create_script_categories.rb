class CreateScriptCategories < ActiveRecord::Migration
  def change
    create_table :script_categories do |t|
      t.integer :category_id, :script_id
      t.timestamps
    end
  end
end

class CreateTelemarketerActions < ActiveRecord::Migration
  def change
    create_table :telemarketer_actions do |t|
      t.string :label
      t.string :designation
      t.text :text_field
      t.integer :user_id
      t.timestamps
    end
  end
end

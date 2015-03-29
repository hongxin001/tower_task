class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :project_id
      t.integer :user_id
      t.integer :type
      t.integer :action_id
      t.integer :target_id

      t.timestamps null: false
    end
  end
end

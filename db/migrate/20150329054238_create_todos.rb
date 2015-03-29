class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :content
      t.integer :to_user_id
      t.integer :from_user_id
      t.date :to_time
      t.integer :project_id
      t.integer :team_id
      t.integer :is_deleted
      t.integer :is_completed

      t.timestamps null: false
    end
  end
end

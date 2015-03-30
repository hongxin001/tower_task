class CreateActionWithComments < ActiveRecord::Migration
  def change
    create_table :action_with_comments do |t|
      t.string :comment_id

      t.timestamps null: false
    end
  end
end

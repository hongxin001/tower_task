class ChangeTypeFieldForEvent < ActiveRecord::Migration
  def change
    rename_column :events, :type, :action_type
  end
end

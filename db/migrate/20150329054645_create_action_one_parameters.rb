class CreateActionOneParameters < ActiveRecord::Migration
  def change
    create_table :action_one_parameters do |t|
      t.string :parameter

      t.timestamps null: false
    end
  end
end

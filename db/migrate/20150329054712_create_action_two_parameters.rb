class CreateActionTwoParameters < ActiveRecord::Migration
  def change
    create_table :action_two_parameters do |t|
      t.string :parameter_1
      t.string :parameter_2

      t.timestamps null: false
    end
  end
end

class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.string :plan_name
      t.integer :pre_built_workouts
      t.boolean :gym_access
      t.boolean :class_access
      t.boolean :studio_access
      t.boolean :meal_plans
      t.integer :personal_training_sessions
      t.decimal :price, precision: 10, scale: 2
      t.timestamps
    end
  end
end

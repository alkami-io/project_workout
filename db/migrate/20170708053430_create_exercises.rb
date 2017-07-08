class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :muscle_group
      t.integer :sets
      t.integer :reps
      t.decimal :weight


      t.timestamps
    end
  end
end

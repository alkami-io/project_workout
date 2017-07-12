class CreateRelationsBetweenExercisesAndRoutines071117 < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises_routines, id: false do |t|
      t.belongs_to :routine, index: true
      t.belongs_to :exercise, index: true
    end
  end
end

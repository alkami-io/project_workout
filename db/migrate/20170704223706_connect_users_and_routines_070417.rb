class ConnectUsersAndRoutines070417 < ActiveRecord::Migration[5.1]
  def change
    add_column :routines, :user_id, :integer
    add_foreign_key :routines, :users
  end
end

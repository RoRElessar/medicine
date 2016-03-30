class ChangeColumnTypesInSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :time_start, :datetime
    remove_column :schedules, :time_finish, :datetime
    add_column :schedules, :time_start, :time
    add_column :schedules, :time_finish, :time
  end
end

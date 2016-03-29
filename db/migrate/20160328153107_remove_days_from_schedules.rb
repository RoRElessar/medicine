class RemoveDaysFromSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :interval, :integer
    remove_column :schedules, :sunday, :integer
    remove_column :schedules, :monday, :integer
    remove_column :schedules, :tuesday, :integer
    remove_column :schedules, :wednesday, :integer
    remove_column :schedules, :thursday, :integer
    remove_column :schedules, :friday, :integer
    remove_column :schedules, :saturday, :integer
    remove_column :schedules, :time_finish, :time
    remove_column :schedules, :time_start, :time
    add_column :schedules, :interval, :integer, default: 30
    add_column :schedules, :sunday_start_time, :time
    add_column :schedules, :monday_start_time, :time
    add_column :schedules, :tuesday_start_time, :time
    add_column :schedules, :wednesday_start_time, :time
    add_column :schedules, :thursday_start_time, :time
    add_column :schedules, :friday_start_time, :time
    add_column :schedules, :saturday_start_time, :time
    add_column :schedules, :sunday_finish_time, :time
    add_column :schedules, :monday_finish_time, :time
    add_column :schedules, :tuesday_finish_time, :time
    add_column :schedules, :wednesday_finish_time, :time
    add_column :schedules, :thursday_finish_time, :time
    add_column :schedules, :friday_finish_time, :time
    add_column :schedules, :saturday_finish_time, :time
  end
end

class AddColumnsToSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :days, :string
    add_column :schedules, :sunday, :integer
    add_column :schedules, :monday, :integer
    add_column :schedules, :tuesday, :integer
    add_column :schedules, :wednesday, :integer
    add_column :schedules, :thursday, :integer
    add_column :schedules, :friday, :integer
    add_column :schedules, :saturday, :integer
  end
end

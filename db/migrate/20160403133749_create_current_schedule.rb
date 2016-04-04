class CreateCurrentSchedule < ActiveRecord::Migration
  def change
    create_table :current_schedules do |t|
      t.belongs_to :doctor
      t.integer :interval, default: 30
      t.time :sunday_start_time
      t.time :monday_start_time
      t.time :tuesday_start_time
      t.time :wednesday_start_time
      t.time :thursday_start_time
      t.time :friday_start_time
      t.time :saturday_start_time
      t.time :sunday_finish_time
      t.time :monday_finish_time
      t.time :tuesday_finish_time
      t.time :wednesday_finish_time
      t.time :thursday_finish_time
      t.time :friday_finish_time
      t.time :saturday_finish_time

      t.timestamps null: false
    end
  end
end

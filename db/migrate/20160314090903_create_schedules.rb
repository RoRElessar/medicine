class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :doctor_id
      t.string :days
      t.datetime :time_start
      t.datetime :time_finish
      t.integer :interval

      t.timestamps null: false
    end
  end
end

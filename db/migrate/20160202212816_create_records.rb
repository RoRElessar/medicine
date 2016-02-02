class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :doctor_id
      t.integer :user_id
      t.string :status
      t.datetime :time

      t.timestamps null: false
    end
  end
end

class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.belongs_to :doctor
      t.belongs_to :user
      t.time :time

      t.timestamps null: false
    end
  end
end

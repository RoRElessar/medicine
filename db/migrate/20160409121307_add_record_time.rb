class AddRecordTime < ActiveRecord::Migration
  def change
    add_column :records, :time, :datetime
  end
end

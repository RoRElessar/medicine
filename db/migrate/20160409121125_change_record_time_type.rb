class ChangeRecordTimeType < ActiveRecord::Migration
  def change
    remove_columns :records, :time
  end
end

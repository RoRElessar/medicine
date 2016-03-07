class AddLatLanTocompanies < ActiveRecord::Migration
  def change
    add_column :companies, :lat, :decimal, :precision => 15, :scale => 13
    add_column :companies, :lng, :decimal, :precision => 15, :scale => 13
  end
end

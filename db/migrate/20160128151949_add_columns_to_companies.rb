class AddColumnsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :address, :string
    add_column :companies, :phone, :string
    add_column :companies, :description, :text
    add_column :companies, :image, :string
  end
end

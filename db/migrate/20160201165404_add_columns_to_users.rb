class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :patronymic, :string
    add_column :users, :surname, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
  end
end

class AddActivityToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :activity, :string
  end
end

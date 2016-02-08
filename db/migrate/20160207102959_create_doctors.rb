class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :second_name
      t.string :surname
      t.string :category
      t.string :specialization
      t.string :photo
      t.string :email
      t.string :password
      t.belongs_to :company

      t.timestamps null: false
    end
  end
end

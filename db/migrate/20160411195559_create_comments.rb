class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :user_id
      t.integer :company_id
      t.integer :doctor_id

      t.timestamps null: false
    end
  end
end

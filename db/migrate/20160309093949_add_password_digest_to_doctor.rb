class AddPasswordDigestToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :password_digest, :string
  end
end

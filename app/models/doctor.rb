class Doctor < ActiveRecord::Base
  belongs_to :company
  after_create :encrypt_password

  def encrypt_password
    self.update(password: Digest::MD5.hexdigest(self.password))
  end
end

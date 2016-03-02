class Doctor < ActiveRecord::Base
  belongs_to :company

  validates_presence_of :name, :surname, :second_name, :specialization, :photo, :email, :password
  validates :name, :surname, :second_name, length: {in: 2..20}

  after_create :encrypt_password

  def encrypt_password
    self.update(password: Digest::MD5.hexdigest(self.password))
  end
end

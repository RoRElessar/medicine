class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :records
  has_many :comments

  validates_presence_of :surname, :name, :patronymic, :phone, :address
  validates :surname, :name, :patronymic, length: {in: 2..20}
  validates :phone, numericality: true
end

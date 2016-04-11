class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :image, CompanyUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :doctors
  has_many :schedules
  has_many :comments

  validates_presence_of :name, :phone, :address, :description, :image, :activity
  validates :name, length: {in: 2..40}
  validates :description, length: {in: 100..500}
  validates :phone, numericality: true
  validates :name, :phone, uniqueness: true
end

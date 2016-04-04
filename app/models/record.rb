class Record < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :user
end

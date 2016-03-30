class Schedule < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :company
end

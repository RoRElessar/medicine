class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :doctor
end

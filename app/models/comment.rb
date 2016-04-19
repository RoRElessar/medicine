class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :doctor

  validates_presence_of :user, :body
  validates :body, length: { in: 3..300 }

 end
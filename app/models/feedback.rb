class Feedback < ApplicationRecord
  validates :content, length: { minimum: 10 }

  belongs_to :user
end

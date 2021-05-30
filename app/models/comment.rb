class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :comment
end

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :comment, length: { minimum: 10, maximum: 100 }
  validates :user_id, :post_id, presence: true
end

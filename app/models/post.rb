class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :content, :user_id, presence: true
  validates :content, length: { minimum: 10, maximum: 100 }
end

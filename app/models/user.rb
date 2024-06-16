class User < ApplicationRecord
  has_many :posts #, :comments

  validates :name, presence: true
  validates :name, length: { minimum: 5 }
  validates :name, uniqueness: true
end

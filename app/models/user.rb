class User < ApplicationRecord
  validates :name, presence: true
  has_many :articles
  has_many :votes

  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
  before_save { self.name = name.downcase }
end

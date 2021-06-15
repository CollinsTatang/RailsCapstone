class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :user_id, presence: true

  validates :title, presence: true
  validates :text, presence: true, length: { minimum: 10 }
end

class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :user
  validates :user_id, presence: true

  validates :title, presence: true
  validates :text, presence: true, length: { minimum: 10 }

  has_many :votes
  belongs_to :category

  scope :order_by_most_recent, -> { includes(:category).order(created_at: :desc) }
end

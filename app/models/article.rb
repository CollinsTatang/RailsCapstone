class Article < ApplicationRecord

  include ImageUploader::Attachment(:image)
  belongs_to :user
  validates :user_id, presence: true

  validates :title, presence: true
  validates :text, presence: true, length: { minimum: 10 }

  has_many :votes
  belongs_to :category

  scope :feature, lambda {
    Article.joins(:votes).group(:id).count.max_by { |_k, v| v }
}
end

class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
    has_many :articles
    before_save { self.name = name.downcase }
end

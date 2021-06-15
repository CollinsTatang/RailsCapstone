class User < ApplicationRecord
    
    has_many :articles
    

    validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
    before_save { self.name = name.downcase }
end

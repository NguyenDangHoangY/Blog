class Author < ApplicationRecord

    has_many :articles
    
    validates :name, presence: true
    validates :age, presence: true
    validates :about, presence: true, length: { minimum: 10 }
end

class Article < ApplicationRecord
    has_many :reviews
    validates :title, presence: true,
                      length: { minimum: 1 }
end

class Article < ApplicationRecord
    validates :title, presence: true
    validates :text, presence: true
    has_many :comments              # Связывыем с comment

    def subject
        title
    end
end

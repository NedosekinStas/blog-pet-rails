class Article < ApplicationRecord
    has_many :comments              # Связывыем с comment
end

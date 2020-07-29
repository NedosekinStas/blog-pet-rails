class Comment < ApplicationRecord
  belongs_to :article             # Связывыем с article
end

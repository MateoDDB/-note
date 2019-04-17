class Messenger < ApplicationRecord
  validates :content, length: { minimum: 1 }
end

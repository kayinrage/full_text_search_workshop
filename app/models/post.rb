class Post < ApplicationRecord
  scope :search, -> (query) { where('content ILIKE ?', "%#{query}%") }
end

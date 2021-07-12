class Post < ApplicationRecord
  has_rich_text :content

  scope :search, -> (query) {
    joins(:rich_text_content).merge(ActionText::RichText.where('body ILIKE ?', "%#{query}%"))
  }
end

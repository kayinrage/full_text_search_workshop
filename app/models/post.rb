class Post < ApplicationRecord
  has_rich_text :content

  before_save :set_plain_text_body

  scope :search, -> (query) {
    joins(:rich_text_content).merge(ActionText::RichText.where('plain_text_body ILIKE ?', "%#{query}%"))
  }

  private

  def set_plain_text_body
    content.plain_text_body = content.body.to_plain_text
  end
end

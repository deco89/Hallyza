class Article < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  has_many_attached :photos
  has_rich_text :rich_body
end

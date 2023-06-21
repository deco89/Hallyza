class Article < ApplicationRecord
  belongs_to :user
  validate :name
  has_many_attached :photos
end

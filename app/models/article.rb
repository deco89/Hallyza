class Article < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  has_many_attached :photos
  has_rich_text :rich_body
  before_save :generate_slug

  before_validation :generate_slug, on: [:create, :update]

  validates :slug, presence: true, uniqueness: true


  def to_param
    slug
  end

  private

  def generate_slug
    self.slug = name.parameterize if slug.blank? && name.present?
  end

end

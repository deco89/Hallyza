class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :specialties, :institute, :contact ]
  include CloudinaryHelper

  def home
    @articles = Article.all
    @image_urls = Article.last(5).map { |article| article.photos.attached? ? cl_image_path(article.photos.first.key, width: 600, height: 400, crop: :fill) : 'img1.jpeg' }
  end

  def index
    @articles = Article.last(5)
    @image_urls = @articles.map do |article|
      if article.photos.attached?
        cl_image_path(article.photos.first.key, width: 600, height: 400, crop: :fill)
      else
        'img1.jpeg'
      end
    end
  end


  def specialties
  end

  def institute
  end

  def contact
  end

  def privacy
  end

end

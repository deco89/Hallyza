class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :specialties, :institute, :contact ]

  def home
    @articles = Article.all
  end

  def specialties
  end

  def institute
  end

  def contact
  end

end

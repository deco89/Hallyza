class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  include CloudinaryHelper

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by!(slug: params[:slug])
    @image_urls = @article.photos.map { |photo| cl_image_path(photo.key, width: 600, height: 400, crop: :fill) }
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.slug = @article.name.parameterize if @article.name.present?
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      @article.update(slug: @article.name.parameterize) if @article.name_changed?
      redirect_to artigo_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  # Strong params: white list of sanitized input that can be used to update database records.
  def article_params
    params.require(:article).permit(:name, :text, :name, :rich_body, :description, :body, photos: [])
  end

  def set_article
    @article = Article.find_by!(slug: params[:slug])
  end
end

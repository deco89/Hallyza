class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def save
    @article = Article.new(article_params)
    @article.save
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  # Strong params: white list of sanitized input that can be used to update database records.
  def article_params
    params.require(:article).permit(:name, :description, :photo)
  end
end

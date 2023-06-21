class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.save
    redirect_to article_path(@article)
  end

  def update
    @article = Article.find(params[:id]) # find the article by id
    @article.update(article_params) # update the article with the params from the form
    redirect_to article_path(@article) # redirect to the show page
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to article_path
  end

  private

  # Strong params: white list of sanitized input that can be used to update database records.
  def article_params
    params.require(:article).permit(:name, :text)
  end
end

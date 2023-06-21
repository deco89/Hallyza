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
    user = User.find_by(id: 1)
    @article.user = user
    @article.save
    redirect_to article_path(@article)
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

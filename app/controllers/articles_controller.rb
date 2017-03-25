class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new #or .create?
  end

  def create
    @article = Article.new
    @article.title = params[:article][:title]
    @article.body = params[:article][:body]
    @article.save
    redirect_to article_path(@article)
  end

end

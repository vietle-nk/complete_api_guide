class ArticlesController < ApplicationController
  def index
    articles = Article.recent
    render json: articles, each_serializer: ArticleSerializer
  end
end

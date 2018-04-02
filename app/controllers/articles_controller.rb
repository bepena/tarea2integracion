class ArticlesController < ApplicationController


  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to admin_articles_path
  end

  def article_params
    params.require(:article).permit(:title, :subtitle, :body,
      comments_atributes: [:id, :_destroy])
  end
  
end

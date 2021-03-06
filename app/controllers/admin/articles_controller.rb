class Admin::ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])

  end



  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  private

  def article_params
    params.require(:article).permit(:title, :subtitle, :body,
      comments_atributes: [:id, :_destroy])
  end
end

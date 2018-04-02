class Admin::CommentsController < ApplicationController

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to admin_article_path(@article)
  end

  def edit
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])

  end



  private

  def comment_params
    params.require(:comment).permit(:author,:content, :article_id, :id)
  end
end

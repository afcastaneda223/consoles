class CommentsController < ApplicationController
  before_action :set_article
  before_action :authenticate_user!
  
  def create
    @comment = @article.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :article_id)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end
end

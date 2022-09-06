class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = @post
    if @comment.save
      redirect_to post_path(@post), notice: "Commentaire publié !"
    else
      redirect_to post_path(@post), status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end

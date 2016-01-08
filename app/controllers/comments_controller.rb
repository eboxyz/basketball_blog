class CommentsController < ApplicationController
  # before_action :authenticate, only: [:create, :destroy]
  # before_action :authorize, only: [:create, :destroy]

  def new
    @comment = Comment.new
    @user = current_user
  end

  def show
    @comment = Comment.find(params[:id])
    @comments = Comment.order("created_at DESC")
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.save
      redirect_to post_path(@post)
    else
      flash.now[:danger] = "error"
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :user_id, :post_id)
    end
    def authorize_destroy
      @comment = Comment.find(params[:id])
      redirect_to posts_path if @comment.user != current_user
    end

end

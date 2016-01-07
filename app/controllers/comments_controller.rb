class CommentsController < ApplicationController
  before_action :authenticate, only: [:create, :destroy]
  before_action :authorize, only: [:create, :destroy]

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    if Comment.new(comment_params).save
      redirect_to post_path
    else
      flash[:error] = "You didn't write anything in your comment!"
      redirect_to post_path
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end

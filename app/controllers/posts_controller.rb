class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if Post.new(post_params).save
      redirect_to target_path
    else
      flash[:error] = "Your post needs a title/body"
      redirect_to new_target_path
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :tags)
    end
end

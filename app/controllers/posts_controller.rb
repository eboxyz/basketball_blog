class PostsController < ApplicationController
before_action :authorize

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def youtube_url
    require 'embed'
  end

  def create
    if Post.new(post_params).save
      redirect_to post_path
    else
      flash[:error] = "Your post needs a title/body/youtube url"
      redirect_to new_post_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :tag, :youtube_url)
    end
end

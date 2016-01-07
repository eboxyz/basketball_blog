class PostsController < ApplicationController
  before_action :authenticate, only: [:create, :destroy]
  before_action :authorize_create, only: [:create]
  before_action :authorize_destroy, only: [:destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to post_path
    else
      render :edit
    end
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

    def authenticate
      redirect_to new_session_path, alert: 'You must be logged in first.' if current_user.nil?
    end

    def authorize_create
      @user = User.find(params[:user_id])
      redirect_to posts_path if @user != current_user
    end

    def authorize_destroy
      @post = Post.find(params[:id])
      redirect_to posts_path if @post.user != current_user
      flash[:error] = "That isn't your post!"
    end

end

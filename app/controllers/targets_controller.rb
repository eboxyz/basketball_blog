class TargetsController < ApplicationController
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

  def create
  end

  def destroy
  end


end

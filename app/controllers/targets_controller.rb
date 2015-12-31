class TargetsController < ApplicationController
  before_action :authorize

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show

  end

  def create
  end

  def destroy
  end


end

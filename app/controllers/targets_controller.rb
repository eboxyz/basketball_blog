class TargetsController < ApplicationController
  before_action :authorize


  def index
    @post = Post.new
  end

  def show

  end

  def create
  end

  def destroy
  end


end

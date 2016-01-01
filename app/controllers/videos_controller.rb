class VideosController < ApplicationController
  def code
    self.link.split('/').last if self.link
  end
  def product
  end
end

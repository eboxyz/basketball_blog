class Post < ActiveRecord::Base
  include ApplicationHelper

  belongs_to :user
  has_many :comments
  has_many :videos
  validates_presence_of :title, :body, :youtube_url


end

class Post < ActiveRecord::Base
  include ApplicationHelper

  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :videos
  belongs_to :users
  validates_presence_of :title, :body, :youtube_url


end

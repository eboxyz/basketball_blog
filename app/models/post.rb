class Post < ActiveRecord::Base
  include ApplicationHelper

  belongs_to :user
  has_many :comments
  has_many :videos
  has_many :taggings
  has_many :tags, through: :taggings
  validates_presence_of :title, :body, :youtube_url


end

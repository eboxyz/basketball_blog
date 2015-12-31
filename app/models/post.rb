class Post < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :user
  validates_presence_of :title, :body
end

class Comment < ActiveRecord::Base
  belongs_to :user, :post
  validates_presence_of :body
end

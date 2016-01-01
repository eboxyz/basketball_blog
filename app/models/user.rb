class User < ActiveRecord::Base
  has_secure_password
  has_many :posts
  has_many :comments
  acts_as_voter
  acts_as_voteable


  validates :email, presence: true, uniqueness: { case_sensitive: false}
end


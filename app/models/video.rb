class Video < ActiveRecord::Base
  include ApplicationHelper
  belongs_to :post
end

class AddReferencesToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :post, index: true, foreign_key: true
  end
end

class AddReferenceToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :comment, index: true, foreign_key: true
    add_reference :posts, :video, index: true, foreign_key: true
  end
end

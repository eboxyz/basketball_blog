class RemoveTagFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :tag
  end
end

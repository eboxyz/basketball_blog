class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :post_id
      t.text :title
      t.text :body
      t.text :tag
      t.text :comment
      t.integer :upvote
      t.integer :downvote

       t.belongs_to :user, index: true, foreign_key: true
      t.timestamps
    end
  end


end


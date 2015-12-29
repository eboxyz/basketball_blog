class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :comment_id
      t.text :body
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end

class AddReferencesToUser < ActiveRecord::Migration
  def change
    add_reference :users, :post, index: true, foreign_key: true
    add_reference :users, :comment, index: true, foreign_key: true
  end
end

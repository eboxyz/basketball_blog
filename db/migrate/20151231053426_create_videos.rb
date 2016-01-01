class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :code
      t.timestamps null: false
    end
  end
  def code
    self.link.split('/').last if self.link
  end
end

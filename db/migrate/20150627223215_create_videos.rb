class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :url_small_cover
      t.string :url_large_cover

      t.timestamps
    end
  end
end

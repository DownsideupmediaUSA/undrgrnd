class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :artist_id
      t.integer :genre_id
      t.integer :star_rating

      t.timestamps
    end
  end
end

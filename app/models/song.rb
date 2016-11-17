class Song < ApplicationRecord
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
  has_many :comments
  has_many :users, through: :comments
  # validates :title, presence: true
  # validates :artist, presence: true
  # validates :genre, presence: true


  

  def artist_name
    self.artist_name
  end

end

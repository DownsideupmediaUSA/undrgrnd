class Artist < ApplicationRecord

  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :genres, through: :song_genres
  validates :artist_name, presence: true


end

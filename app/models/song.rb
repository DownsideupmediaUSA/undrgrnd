class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :post_genres
  has_many :comments
  has_many :users, through: :comments
end

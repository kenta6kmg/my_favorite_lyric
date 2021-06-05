class Lyric < ApplicationRecord
  validates :lyric, presence: true
  validates :song, presence: true
  validates :artist, presence: true
end

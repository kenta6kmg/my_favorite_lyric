class Lyric < ApplicationRecord
  validates :lyric, presence: true
  validates :song, presence: true
  validates :artist, presence: true
  belongs_to :user
  has_many :comments
end

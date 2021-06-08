class Lyric < ApplicationRecord
  validates :lyric, presence: true
  validates :song, presence: true
  validates :artist, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Lyric.where('lyric LIKE(?) OR song LIKE(?) OR artist LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Lyric.all
    end
  end
end


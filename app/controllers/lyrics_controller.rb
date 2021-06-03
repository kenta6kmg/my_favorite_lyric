class LyricsController < ApplicationController
  def index
    @lyrics = Lyric.all
  end
end

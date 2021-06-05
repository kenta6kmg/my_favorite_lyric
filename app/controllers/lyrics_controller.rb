class LyricsController < ApplicationController
  def index
    @lyrics = Lyric.all
  end

  def new
    @lyric =  Lyric.new
  end

  def create
    Lyric.create(lyric_params)
  end

  def destroy
    lyric = Lyric.find(params[:id])
    lyric.destroy
  end

  private
  def lyric_params
    params.require(:lyric).permit(:lyric, :song, :artist)
  end
  
end

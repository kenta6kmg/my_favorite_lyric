class LyricsController < ApplicationController
  before_action :move_to_index, except: :index
  
  def index
    @lyrics = Lyric.all
  end

  def new
    @lyric =  Lyric.new
  end

  def create
    Lyric.create(lyric_params)
  end

  def edit
    @lyric = Lyric.find(params[:id])
  end

  def update
    lyric = Lyric.find(params[:id])
    lyric.update(lyric_params)
  end

  def destroy
    lyric = Lyric.find(params[:id])
    lyric.destroy
  end

  private
  def lyric_params
    params.require(:lyric).permit(:lyric, :song, :artist)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end

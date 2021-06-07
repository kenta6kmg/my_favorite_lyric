class LyricsController < ApplicationController
  before_action :move_to_index, except: [:index, :search]
  before_action :set_lyric, only: [:edit, :show]
  
  def index
    @lyrics = Lyric.includes(:user).order("created_at DESC")
  end

  def new
    @lyric =  Lyric.new
  end

  def create
    Lyric.create(lyric_params)
  end

  def edit
  end

  def update
    lyric = Lyric.find(params[:id])
    lyric.update(lyric_params)
  end

  def show
    @comment = Comment.new
    @comments = @lyric.comments.includes(:user)
  end

  def search
    @lyrics = Lyric.search(params[:keyword])
  end

  def destroy
    lyric = Lyric.find(params[:id])
    lyric.destroy
  end

  private
  def lyric_params
    params.require(:lyric).permit(:lyric, :song, :artist).merge(user_id: current_user.id)
  end

  def set_lyric
    @lyric = Lyric.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end

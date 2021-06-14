require 'rails_helper'

RSpec.describe Lyric, type: :model do
  before do
    @lyric = FactoryBot.build(:lyric)
end

describe 'lyricの保存'do
  context 'lyricの保存ができる場合' do
    it 'lyric, song, artist' do
      expect(@lyric).to be_valid
    end
  end
  context '投稿できない場合' do
    it 'lyricが空では投稿できない' do
      @lyric.lyric = ''
      @lyric.valid?
      expect(@lyric.errors.full_messages).to include("Lyric can't be blank")
    end
    it 'songが空では投稿できない' do
      @lyric.song = ''
      @lyric.valid?
      expect(@lyric.errors.full_messages).to include("Song can't be blank")
    end
    it 'artistが空では投稿できない' do
      @lyric.artist = ''
      @lyric.valid?
      expect(@lyric.errors.full_messages).to include("Artist can't be blank")
    end
    it 'ユーザーが紐付いてなければ投稿できない' do
      @lyric.user = nil
      @lyric.valid?
      expect(@lyric.errors.full_messages).to include("User must exist")
    end
   end
  end
end

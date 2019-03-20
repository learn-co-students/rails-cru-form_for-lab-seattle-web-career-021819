class SongsController < ApplicationController
  before_action :set_songs, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(songs_params)
    redirect_to @song
  end

  def update
    set_songs
    @song.update(songs_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end


  private
  def set_songs
    @song = Song.find(params[:id])
  end

  def songs_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end

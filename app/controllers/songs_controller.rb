class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit]
  #create
  def new
    @song = Song.new
  end

  def create
    @song = Song.create(post_params)
    redirect_to song_path(@song)
  end

  #show (new/index)
  def index
    @songs = Song.all
  end

  def show
  end

  #update
  def edit
  end

  def update
    @song = Song.update(post_params)
    redirect_to song_path(@song)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def post_params
    params.require(:song).permit(:name, :artist_id, :song_id)
  end

end

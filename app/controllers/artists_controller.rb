class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit]
  #create
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(post_params)
    redirect_to artist_path(@artist)
  end

  #show (new/index)
  def index
    @artists = Artist.all
  end

  def show
  end

  #update
  def edit
  end

  def update
    @artist = Artist.update(post_params)
    redirect_to artist_path(@artist)
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def post_params
    params.require(:artist).permit(:name, :bio)
  end

end

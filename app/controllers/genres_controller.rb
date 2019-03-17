class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit]
  #create
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(post_params)
    redirect_to genre_path(@genre)
  end

  #show (new/index)
  def index
    @genres = Genre.all
  end

  def show
  end

  #update
  def edit
  end

  def update
    @genre = Genre.update(post_params)
    redirect_to genre_path(@genre)
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def post_params
    params.require(:genre).permit(:name)
  end

end

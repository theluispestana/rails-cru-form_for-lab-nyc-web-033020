class ArtistsController < ApplicationController
  before_action :find_artist, only: [:edit, :show, :update]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)

    redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
    @artist = Artist.update(artist_params)

    redirect_to artist_path(@artist)
  end

  def show
  end

  private 

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
  
  def find_artist
    @artist = Artist.find(params[:id])
  end
end

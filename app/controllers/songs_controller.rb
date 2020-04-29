class SongsController < ApplicationController
  before_action :find_song, only: [:edit, :update, :show]
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)

    redirect_to song_path(@song)
  end

  def edit
  end

  def update
    @song.update(song_params)

    redirect_to song_path(@song)
  end

  def show
  end

  private 

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def find_song
    @song = Song.find(params[:id])
  end
end

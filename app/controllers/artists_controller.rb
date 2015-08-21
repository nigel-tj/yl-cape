class ArtistsController < ApplicationController
  def index
    @artists = Artist.all 
  end

  def new
    @artist = Artist.new 
    render :layout => 'admin'
  end

  def create
  end

  def update
  end

  def downloads
    @songs = Music.all
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :email, :cell_number, :bio, :category)
  end
end

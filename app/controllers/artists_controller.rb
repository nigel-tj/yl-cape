class ArtistsController < ApplicationController
  def index
    @artists = Artist.all 
  end

  def new
    @artist = Artist.new 
  end

  def create
  end

  def update
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :email, :cell_number, :bio, :category)
  end
end

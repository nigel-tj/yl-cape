class ArtistsController < ApplicationController
  def index
    @artists = Artist.all 
  end

  def new
    @artist = Artist.new 
    render :layout => 'admin'
  end


  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:notice] = "Successfully created artist."
      redirect_to "/artist_songs"
    else
      render :action => 'new'
    end
  end

  def update
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = Music.where(:id => params[:id])
  end

  def artist
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :email, :cell_number, :bio, :category)
  end
end

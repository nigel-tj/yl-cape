class ArtistsController < ApplicationController
  layout "admin", only: [:new, :create, :update]

  def index
    @artists = Artist.all 
  end

  def new
    @artist = Artist.new 
    #render :layout => 'admin'
  end

  def admin_index
    @artists = Artist.all 
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:notice] = "Successfully created artist."
      render :action => 'admin_index'
    else
      render :action => 'new'
    end
  end

  def update
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = Music.where(:artist_id => params[:id])
  end

  def artist
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :email, :cell_number, :bio, :category)
  end
end

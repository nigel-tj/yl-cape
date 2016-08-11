class ArtistsController < ApplicationController
  layout "admin", only: [:new, :create, :update, :admin_artist_index, :edit]

  def index
    @artists = Artist.all 
  end

  def new
    @artist = Artist.new 
    #render :layout => 'admin'
  end

  def admin_artist_index
    @artists = Artist.all 
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:notice] = "Successfully created artist."
      redirect_to '/admin_artist_index'
    else
      render :action => 'new'
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = Track.where(:artist_id => params[:id])
  end

  def artist
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :email, :cell_number, :bio, :cover, :profile_picture, :category)
  end
end

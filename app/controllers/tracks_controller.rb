class TracksController < ApplicationController
  before_action :authenticate_admin!, except: [:show,:track]
  layout "admin", only: [:new, :create, :update, :admin_index, :index]
  
  def index
    @tracks = Track.all
    @artists = Artist.all
  end
  
  def track
    @tracks = Track.all
    @artists = Artist.all
  end

  def admin_index
    #@tracks = Track.all
    @tracks = Track.all
    @artists = Artist.all
  end

  #def admin_track_index
  #  @tracks = Track.where(:artist_id => params[:artist_id]) 
  #end

  def new
    @track = Track.new
    @artist_id = current_admin.id 
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      flash[:notice] = "Successfully uploaded track."
      render :action => '/admin_index'
    else
      render :action => 'new'
    end
  end

  def show
    @track = Track.find(params[:id])
  end


  private
  def track_params
    params.require(:track).permit(:track_title,:intro,:thumb,:track,:image,:artist_id,:category)
  end

end

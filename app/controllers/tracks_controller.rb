class TracksController < ApplicationController
  before_action :authenticate_admin!, except: [:show, :music]
  layout "admin", only: [:new, :create, :update, :admin_all_music, :index]
  
  def index
    @tracks = Track.order('created_at DESC')
    @artists = Artist.order('created_at DESC')
  end

  def music
    @tracks = Track.order('created_at DESC')
    #@artists = Artist.all
  end

  def admin_all_music
    #@tracks = Track.all
    @songs = Track.order('created_at DESC')
    #@artists = Artist.all
  end

  #def admin_track_index
  #  @tracks = Track.where(:artist_id => params[:artist_id]) 
  #end

  def new
    @track = Track.new
    ##@artist_id = current_admin.id 
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      flash[:notice] = "Successfully uploaded track."
      render :action => '/admin_all_music'
    else
      render :action => 'new'
    end
  end

  def show
    @track = Track.find(params[:id])
  end


  private
  def track_params
    params.require(:track).permit(:title,:intro,:thumb,:track,:image,:category)
  end

end

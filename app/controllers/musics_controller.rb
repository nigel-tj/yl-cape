require 'soundcloud'
class MusicsController < ApplicationController
  before_action :authenticate_admin!, except: [:show]
  layout "admin", only: [:new, :create, :update, :admin_index, :index]

  def index
    @tracks = Music.all
    @artists = Artist.all
  end

  def music
    @tracks = Music.all
    @artists = Artist.all
  end

  def admin_index
    #@tracks = Music.all
    @tracks = Music.all
    @artists = Artist.all
  end

  #def admin_music_index
  #  @tracks = Music.where(:artist_id => params[:artist_id]) 
  #end

  def new
    @music = Music.new
    @artist_id = current_admin.id 
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      flash[:notice] = "Successfully uploaded track."
      render :action => '/admin_index'
    else
      render :action => 'new'
    end
  end

  def show
    @music = Music.find(params[:id])
  end


  private
  def music_params
    params.require(:music).permit(:track_title,:intro,:thumb,:track,:image,:artist_id,:category)
  end

end

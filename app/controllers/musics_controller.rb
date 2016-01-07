require 'soundcloud'
class MusicsController < ApplicationController
  before_action :authenticate_admin_user!, except: [:index, :show]
  layout "admin", only: [:new, :create, :update]

  def index
    @tracks = Music.all
    @artists = Artist.all
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      flash[:notice] = "Successfully uploaded track."
      render :action => 'index'
    else
      render :action => 'new'
    end
  end

  def show
    @music = Music.find(params[:id])
  end


  private
  def music_params
    params.require(:music).permit(:track_title,:cover,:intro,:thumb,:track,:image,:artist,:category)
  end

end

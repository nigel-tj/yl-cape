require 'soundcloud'
class MusicsController < ApplicationController
  def index
  end

  def new
    @music = Music.new
    render :layout => 'admin'
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      flash[:notice] = "Successfully created gallery."
      redirect_to "/artist_songs"
    else
      render :action => 'new'
    end
  end

  def show
    @music = Music.find(params[:id])
  end


  private
  def music_params
    params.require(:music).permit(:track_title,:cover,:intro,:thumb,:track,:image,:artist)
  end

end

require 'soundcloud'
class MusicController < ApplicationController
  def index
  end

  def new
    @music = Music.new
    render :layout => 'admin'
  end
end

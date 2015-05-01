class VideosController < ApplicationController
  def index
    @videos = Video.order('created_at DESC')
  end
  
  def new
    @video = Video.new
  end
  
  def create
    if params[:file].present? && params[:title].present? # ... and more checks here
      # upload video
    else
      # display an error (and user won't even understand what exactly is wrong)
    end
  end
end

class VideosController < ApplicationController
  layout "admin", only: [:new, :create, :update, :all_videos]

  def index
    @videos = Video.all
  end

  def all_videos
    @videos = Video.all
  end

  def test
    @videos = Video.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      flash[:success] = 'Video added!'
      render :action => '/all_videos'
    else
      render :new
    end
  end


  private

  def video_params
    params.require(:video).permit(:link,:category)
  end
end

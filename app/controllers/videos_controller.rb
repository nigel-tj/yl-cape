class VideosController < ApplicationController
  before_action :authenticate_admin!, except: [:index]
  layout "admin", only: [:new, :create, :update, :all_videos]

  def index
    @videos = Video.order('created_at DESC')
  end

  def all_videos
    @videos = Video.order('created_at DESC')
  end

  def test
    @videos = Video.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    flash[:success] = 'Video deleted!'
    redirect_to '/all_videos'
  end

  def edit
    @video = Video.find(params[:id])
  end

  def show
    @video = Video.find(params[:id])
  end
  
  def create
    @video = Video.new(video_params)
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to '/all_videos'
    else
      render :new
    end
  end


  private

  def video_params
    params.require(:video).permit(:link,:category)
  end
end

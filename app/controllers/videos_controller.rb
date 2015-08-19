class VideosController < ApplicationController

  def index
    @videos = Video.order('created_at DESC')
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
      redirect_to videos_url
    else
      render :new
    end
  end

  def get_category_style(category)
    if category.eql? "bangers"
      render :text => ".gallery-photo-item.mix.bangers.wow.fadeIn"
    elsif category.eql? "villageHits"
      render :text => ".gallery-photo-item.mix.villageHits.wow.fadeIn"
    elsif category.eql? "upcoming"
      render :text => ".gallery-photo-item.mix.upcoming.wow.fadeIn"
    end
  end

  private

  def video_params
    params.require(:video).permit(:link,:category)
  end
end

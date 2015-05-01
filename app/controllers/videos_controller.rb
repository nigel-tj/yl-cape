class VideosController < ApplicationController
  def index
    @videos = Video.order('created_at DESC')
  end
  
  def new
    @video = Video.new
  end

def create
    @video_upload = VideoUpload.new(title: params[:video_upload][:title], description: params[:video_upload][:description], file: params[:video_upload][:file].try(:tempfile).try(:to_path))

    if @video_upload.save
          uploaded_video = @video_upload.upload!(current_user)

          if uploaded_video.failed?
                  flash[:error] = 'There was an error while uploading your video...'
                else
                  Video.create({link: "https://www.youtube.com/watch?v=#{uploaded_video.id}"})
                  flash[:success] = 'Your video has been uploaded!'
                end
          redirect_to root_url
        else
          render :new
        end
  end

# def create
#     @video_upload = VideoUpload.new(title: params[:video_upload][:title],
#                                                                       description: params[:video_upload][:description],
#                                                                       file: params[:video_upload][:file].try(:tempfile).try(:to_path))
#     if @video_upload.save
#           uploaded_video = @video_upload.upload!(current_user)

#           # check if the video was uploaded or not

#           redirect_to root_url
#         else
#           render :new
#         end
#   end
  # def create
  #   if params[:file].present? && params[:title].present? # ... and more checks here
  #     # upload video
  #   else
  #     # display an error (and user won't even understand what exactly is wrong)
  #   end
  # end
end

class GalleryController < ApplicationController
  def index
    @photos = Dir["assets/*.jpg"]
  end
end

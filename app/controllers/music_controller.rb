class MusicController < ApplicationController
  def index
    client = SoundCloud.new(:client_id => 3239f804ddc1933e6f45a436c6d2f0aa )
    @tracks = client.get('/tracks' , :limit => 10 , :order => 'hotness')
  end
end

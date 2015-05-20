require 'soundcloud'
class MusicController < ApplicationController
  def index
    @client = Soundcloud.new(:client_id => '3239f804ddc1933e6f45a436c6d2f0aa',:client_secret => 'baeaa699992bdf7a3283a602b6f7ee8d')
    
  end
end

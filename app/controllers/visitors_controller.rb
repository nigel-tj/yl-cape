class VisitorsController < ApplicationController
    def index
        # @tweets = $twitter.user_timeline("Redcupvillage") 
        @videos = Video.order('created_at DESC')
      
    end
end

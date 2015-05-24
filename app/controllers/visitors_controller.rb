class VisitorsController < ApplicationController
    def index
        @tweets = $twitter.search("life style news", result_type: "recent").take(100)
        
        @videos = Video.order('created_at DESC')
      
    end
end

class VisitorsController < ApplicationController
    def index
        @tweets = $twitter.search("SA Hip Hop", result_type: "recent").take(20)
        @videos = Video.order('created_at DESC')
      
    end
end

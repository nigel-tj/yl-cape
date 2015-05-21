class VisitorsController < ApplicationController
    def index
        @tweets = $twitter.search("SA Hip Hop", result_type: "recent")
        @videos = Video.order('created_at DESC')
      
    end
end

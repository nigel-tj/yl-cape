class VisitorsController < ApplicationController
    def index
        @tweets = $twitter.search("Urban culture news", result_type: "recent").take(20)
        @videos = Video.order('created_at DESC')
      
    end
end

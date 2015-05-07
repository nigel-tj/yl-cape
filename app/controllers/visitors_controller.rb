class VisitorsController < ApplicationController
    def index
        @tweets = $twitter.user_timeline("Redcupvillage")        
    end
end

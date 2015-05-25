class VisitorsController < ApplicationController
    def index
        @tweets = $twitter.search("lifestyle news ", result_type: "recent").take(20)
     
        @videos = Video.order('created_at DESC')
        
        @client = Instagram.client(:access_token  => '1052563623.1fb234f.99cb9eff244d48e8a71027ed63f6830f')
        default_search = @client.tag_search('Redcupvillage')
        @tag = default_search
        @tag = @tag.first.name
        @results = @client.tag_recent_media(@tag)
        
      
    end
end

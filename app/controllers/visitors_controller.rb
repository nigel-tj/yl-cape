class VisitorsController < ApplicationController
    def index
        @tweets = $twitter.search("lifestyle news ", result_type: "recent").take(20)
     
        @videos = Video.order('created_at DESC')
        
        @client = Instagram.client(:access_token  => '1052563623.1fb234f.99cb9eff244d48e8a71027ed63f6830f')
        default_search = @client.tag_search('Redcupvillage')
        @tag = default_search
        @tag = @tag.first.name
        @results = @client.tag_recent_media(@tag)
        @graph = Koala::Facebook::API.new( 'CAACEdEose0cBAPeqb26hqvNjOPPafaVbTz7aZCvrHcZAJHx2MuevZBmoqrBnIdtZBBAe7HKM0ZBvVZBrRCjTtYBZBvPukuGNlLZCxPLqshJt3FZAgxbbZCxTA9ZCGrlUKssfxYX1HS7uH1zafFQSZBHpKKZBlLqA49f7PPyjARXpeFClxzAxhvDQ6mZB94PH034zZCQ38gz5xV1X2JRbmxk1vz6HcGD' , '41b99146e69977030e7bca75d879bbf6')
        @graph.get_connections("TheRedcupvillage", "feed")
        
      
    end
end

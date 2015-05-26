class VisitorsController < ApplicationController
    def index
        @tweets = $twitter.search("lifestyle news ", result_type: "recent").take(20)
     
        @videos = Video.order('created_at DESC')
        
        @client = Instagram.client(:access_token  => '1052563623.1fb234f.99cb9eff244d48e8a71027ed63f6830f')
        default_search = @client.tag_search('Redcupvillage')
        @tag = default_search
        @tag = @tag.first.name
        @results = @client.tag_recent_media(@tag)
        @graph = Koala::Facebook::API.new( 'CAACEdEose0cBAIfnOo7Fxv49emoR3ae9JAp6l9XZBgMZCguSRNp2fyDNenJyxSoZCuKh1ZCJy7Vd8BHf4g3iQehScf37jA79iZAJ6DlJBYcrJjOjgLlhjKYurfAHzZCo3KeiXZARyYjZAonCMV5GVrn5HobQummylQSgOgAooJXqUH2icusWdcpnQentdkJygCvjL83vWDQRMWe0Ll0J8JkZCVQ15OXBopGsZD')
        @graph.get_connections("TheRedcupvillage", "feed")
        
      
    end
end

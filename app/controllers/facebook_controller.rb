class FacebookController < ApplicationController
    before_filter :authenticate_user!
    
    def facebook_profile
         if current_user.facebook_oauth_setting
             @graph = Koala::Facebook.API.new(current_user.uid)
             @profile = @graph.get_object("me")
             @picture = @graph.get_picture("me")
             @feed = graph.get_picture("me" , "feed")
             @friends = @graph.get_connections("me", "friends")
             
             
         else
             redirect_to "/"
         end
        
    end
end

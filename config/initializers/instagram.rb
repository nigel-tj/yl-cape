require "instagram"

Instagram.configure do |config|
	config.client_id = "5cd02a605a204fff94b8a8b5f3688876"
	config.client_secret = "b1b7e7e7971b4faaa49f14733ddc4243"
end

CALLBACK_URL = "https://redvillage.herokuapp.com/"
SCOPE = "likes+comments+relationships"
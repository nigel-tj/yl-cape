Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 'AIzaSyBMkF5Qr-dE_9zf1yKBXWSGB02LJauXinw', 'YT_CLIENT_SECRET', scope: 'userinfo.profile,youtube'
end

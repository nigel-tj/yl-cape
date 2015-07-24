Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 'AIzaSyBMkF5Qr-dE_9zf1yKBXWSGB02LJauXinw', 'YT_CLIENT_SECRET', scope: 'userinfo.profile,youtube'
  OmniAuth.config.on_failure do |env|
    error_type = env['omniauth.error.type']
    
    new_path = "#{env['SCRIPT_NAME']}#{OmniAuth.config.path_prefix}/failure?message=#{error_type}"
    
    [301, {'Location' => new_path, 'Content-Type' => 'text/html'}, []]
  end
end

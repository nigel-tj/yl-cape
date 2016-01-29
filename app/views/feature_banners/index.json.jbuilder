json.array!(@feature_banners) do |feature_banner|
  json.extract! feature_banner, :id, :name, :description, :image, :link
  json.url feature_banner_url(feature_banner, format: :json)
end

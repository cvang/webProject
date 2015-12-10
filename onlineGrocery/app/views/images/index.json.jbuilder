json.array!(@images) do |image|
  json.extract! image, :id, :filename, :private, :product_id
  json.url image_url(image, format: :json)
end

json.array!(@products) do |product|
  json.extract! product, :id, :producttypescode_id, :price, :product_detail
  json.url product_url(product, format: :json)
end

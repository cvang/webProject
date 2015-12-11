json.array!(@carts) do |cart|
  json.extract! cart, :id, :product_id, :user_id, :quantity
  json.url cart_url(cart, format: :json)
end

json.array!(@addresses) do |address|
  json.extract! address, :id, :line_1_building, :line_2_street, :city, :state, :country, :user_id
  json.url address_url(address, format: :json)
end

json.array!(@credit_cards) do |credit_card|
  json.extract! credit_card, :id, :card_numbers, :expire, :cvs, :user_id
  json.url credit_card_url(credit_card, format: :json)
end

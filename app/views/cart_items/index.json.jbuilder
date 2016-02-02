json.array!(@cart_items) do |cart_item|
  json.extract! cart_item, :id, :product_id, :cart_id
  json.url cart_item_url(cart_item, format: :json)
end

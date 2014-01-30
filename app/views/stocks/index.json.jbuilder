json.array!(@stocks) do |stock|
  json.extract! stock, :id, :item_id, :quantity
  json.url stock_url(stock, format: :json)
end

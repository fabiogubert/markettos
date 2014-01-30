json.array!(@items) do |item|
  json.extract! item, :id, :barcode, :name, :description, :price, :location
  json.url item_url(item, format: :json)
end

json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :user_id, :member, :pay_method, :card_number, :quantity, :sub_total, :discount, :paid_amount
  json.url purchase_url(purchase, format: :json)
end

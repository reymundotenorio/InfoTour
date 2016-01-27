json.array!(@products) do |product|
  json.extract! product, :id, :tiltle, :description, :image_url, :price, :category
  json.url product_url(product, format: :json)
end

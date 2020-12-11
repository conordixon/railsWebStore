json.extract! product, :id, :productname, :description, :price, :brand, :created_at, :updated_at
json.url product_url(product, format: :json)

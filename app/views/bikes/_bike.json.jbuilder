json.extract! bike, :id, :brand, :description, :image, :price, :created_at, :updated_at
json.url bike_url(bike, format: :json)

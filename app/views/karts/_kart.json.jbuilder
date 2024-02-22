json.extract! kart, :id, :size, :color, :speed, :maneuverability, :description, :image, :created_at, :updated_at
json.url kart_url(kart, format: :json)

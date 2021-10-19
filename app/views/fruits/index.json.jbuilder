# frozen_string_literal: true

# json.array! @fruits, partial: 'fruits/fruit', as: :fruit
# json.content format_content(@fruit.content)
# json.(@fruit, :created_at, :updated_at)


json.array! @fruits do |fruit|
  json.name fruit.name
  json.description fruit.description
  json.url url_for(fruit.photo)           if fruit.photo.attached?
  json.photo_url url_for(fruit.image_url) if fruit.photo.attached?
end

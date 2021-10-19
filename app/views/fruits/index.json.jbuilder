json.array! @fruits do |fruit|
  json.id fruit.id
  json.name fruit.name
  json.description fruit.description
  json.url url_for(fruit.photo)           if fruit.photo.attached?
  json.photo_url url_for(fruit.image_url) if fruit.photo.attached?
end

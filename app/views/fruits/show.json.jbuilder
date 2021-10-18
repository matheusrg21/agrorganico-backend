# frozen_string_literal: true

json.partial! 'fruits/fruit', fruit: @fruit
json.url fruit_url(fruit, format: :json)
json.photo rails_blob_path(fruit.photo, only_path: true) if fruit.photo.attached?
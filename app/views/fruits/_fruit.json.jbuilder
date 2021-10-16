# frozen_string_literal: true

json.extract! fruit, :id, :name, :description, :created_at, :updated_at
json.url fruit_url(fruit, format: :json)
json.photo rails_blob_path(fruit.photo, only_path: true) if fruit.photo.attached?

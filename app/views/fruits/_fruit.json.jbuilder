# frozen_string_literal: true

json.extract! fruit, :id, :name, :description, :created_at, :updated_at
json.url rails_blob_url(fruit.photo)
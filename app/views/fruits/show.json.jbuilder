# frozen_string_literal: true

json.partial! 'fruits/fruit', fruit: @fruit
json.url @fruit.image_url                if @fruit.photo.attached?
json.photo_url url_for(@fruit.image_url) if @fruit.photo.attached?

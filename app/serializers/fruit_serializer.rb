# frozen_string_literal: true

class FruitSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :photo, :image_url

  def photo_url
    url_for(object.image_url)
  end
end

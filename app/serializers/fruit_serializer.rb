# frozen_string_literal: true

class FruitSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :photoa

  def photo
    rails_blob_path(object.photo, only_path: true) if object.photo.attached?
  end
end

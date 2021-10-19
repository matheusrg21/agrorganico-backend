# frozen_string_literal: true

class Fruit < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :photo

  def image_url
    rails_blob_path(self.photo, disposition: "attachment", only_path: true)
  end
end

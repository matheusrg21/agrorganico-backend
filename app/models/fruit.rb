# frozen_string_literal: true

class Fruit < ApplicationRecord
  has_one_attached :photo
end

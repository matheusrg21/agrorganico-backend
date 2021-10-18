# frozen_string_literal: true

class ShoppingList < ApplicationRecord
  belongs_to :user

  serialize :itens, Array
end

# frozen_string_literal: true

json.array! @fruits, partial: 'fruits/fruit', as: :fruit

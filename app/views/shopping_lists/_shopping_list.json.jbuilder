# frozen_string_literal: true

json.extract! shopping_list, :id, :itens, :user_id, :created_at, :updated_at
json.url shopping_list_url(shopping_list, format: :json)

# frozen_string_literal: true

class AddPasswordDigestToUser < ActiveRecord::Migration[6.1]
  add_column :users, :password_digest, :string
end

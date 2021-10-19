# frozen_string_literal: true

# User
class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :shopping_lists

  def password_token_valid?
    (reset_password_sent_at + 1.hour) > Time.zone.now
  end

  def reset_password (password)
    self.reset_password_token = nil
    self.password = password
    save!
  end
end

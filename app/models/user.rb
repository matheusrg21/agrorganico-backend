# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  belongs_to :shopping_list, optional: true

  def send_password_reset
    self.reset_password_token = generate_base64_token
    self.reset_password_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver_now
  end

  def password_token_valid?
    (reset_password_sent_at + 1.hour) > Time.zone.now
  end

  def reset_password(password)
    self.reset_password_token = nil
    self.password = password
    save!
  end

  # def generate_base64_token
  #   test = SecureRandom.urlsafe_base64
  # end
end

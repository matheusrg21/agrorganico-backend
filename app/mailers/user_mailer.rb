# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'guiadotraineedasgalaxias@gmail.com'

  def password_reset(user)
    @user = user
    mail to: @user.email, subject: 'Recuperação de Senha'
  end
end

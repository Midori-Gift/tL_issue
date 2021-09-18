class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.registration_confirmation.subject
  #
  def registration_confirmation(email, name)
    @name = name
    # user_name = ENV[EMAIL]
    # password = ENV[PASS]
    mail to: email, subject: 'WeBlog!に登録して頂きありがとうございます！'
  end
end

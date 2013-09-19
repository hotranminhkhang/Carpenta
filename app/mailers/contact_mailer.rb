class ContactMailer < ActionMailer::Base
  default to: "hotranminhkhang@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send_email.subject
  #
  def send_email(user_info)
    @user_info = user_info

    mail(
      to: "hotranminhkhang@gmail.com",
      from: user_info["email"],
      subject: user_info["subject"]
    )
  end
end

class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def open_mail
    mail(to: "maxence.lenoir1206@gmail.com")
  end
end

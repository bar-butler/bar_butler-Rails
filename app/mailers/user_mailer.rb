class UserMailer < ActionMailer::Base
  default from: 'noreturn@bar-butler.com'

  def warning_low(email)
    mail(
      to: email,
      subject: "You are almost out of beer!"
    )
  end
end
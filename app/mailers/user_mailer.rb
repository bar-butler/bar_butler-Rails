class UserMailer < ActionMailer::Base
  default from: 'noreturn@bar-butler.com'

  def warning_low(email, beer)
    mail(
      to: email,
      subject: "You are almost out of beer!",
      body: "This message is to inform you that your current keg of #{beer} is running low.
            Please refill as soon as possible.
                                    -Sincerely,
                                     Bar Butler"
    )
  end
end
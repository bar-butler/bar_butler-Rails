class UserMailer < ActionMailer::Base
  default from: 'no.return.bar.butler@gmail.com'

  def warning_low(user, beer)
    email = user.email 
    mail(
      to: email,
      subject: "You are almost out of beer!",
      body: 

           "Dear #{user.first_name},

            This message is to inform you that your current keg of #{beer} is running low.
            Please refill as soon as possible.
                                    -Sincerely,
                                     Bar Butler"
    )
  end
end
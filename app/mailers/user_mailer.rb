class UserMailer < ActionMailer::Base
  default from: 'no-return@bar-butler.com'

  def warning_low(user, beer)
    email = user.email 
    mail(
      to: email,
      subject: "You are almost out of beer!",
      body: 

           "Dear #{user.first_name},

            This message is to inform you that your current keg of #{beer.beer_name} is running low.
            Please refill as soon as possible.
                                    -Sincerely,
                                     Bar Butler"
    )
  end

  def one_keg_left(user, beer)
    email = user.email
    mail(
      to: email,
      subject: "Only One Left!",
      body: 

           "Dear #{user.first_name},

            This message is to inform you that you are down to one keg of #{beer.beer_name}.
            Please restock as soon as possible.
                                    -Sincerely,
                                     Bar Butler"
                                     )
  end
end
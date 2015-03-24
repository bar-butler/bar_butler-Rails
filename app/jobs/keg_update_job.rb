class KegUpdateJob < ActiveJob::Base
  queue_as :email

  def perform(user, beer)
    if beer.dry_at < 2.hours.from_now
      UserMailer.warning_low(user, beer).deliver_now    
    end

    if beer.keg_number < 2
      UserMailer.one_keg_left(user, beer).deliver_now
    end

  end
end

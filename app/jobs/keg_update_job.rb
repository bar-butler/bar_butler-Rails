class KegUpdateJob < ActiveJob::Base
  queue_as :email

  def perform(user, beer)
    beer.find_each do |b|
      if b.dry_at < 2.hours.from_now
        UserMailer.warning_low(user).deliver_now!    
      end
    end
  end
end

class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :drinks

  def update_dry_at!
    sum = self.drinks.where(created_at: [1.week.ago, DateTime.now ]).sum("drinks.amount")
    rate = sum / 168
    self.update(dry_at: rate.floor.hours.from_now)
  end

  # def update_dry_at!()


  #   @keg_default = :keg_weight || nil
  #   @initial_weight = Weight.new(:weight, :lb) - @keg_default 
  #   @new_weight = params[:drinks][:amount]
  #   if @new_weight == @initial_weight / 2
      
  #   elsif @new_weight == @initial_weight / 4
    
  #   elsif @new_weight == @initial_weight / 10 
    
  #   end 
  # end 
    
  # end
end

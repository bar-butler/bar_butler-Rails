class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :drinks
  has_many :cans
  has_many :bottles

  def update_dry_at!
    
    initial_weight = Weight.new(:keg_weight + :weight, :lb)
    new_weight = initial_weight - [:drinks][:amount]
    if self.drinks.count > 3
      
    end
  end
end

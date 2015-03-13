class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :drinks
  has_many :cans
  has_many :bottles

  def update_dry_at!
    if self.drinks.count > 3
      
    end
  end
end

class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :drinks
  has_many :cans
  has_many :bottles

  def choose_container
  end
end

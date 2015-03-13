class Drink < ActiveRecord::Base
  belongs_to :beer
  belongs_to :liquor

  def method_name
    
  end
end

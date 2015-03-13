class Drink < ActiveRecord::Base
  belongs_to :beer
  belongs_to :liquor
end

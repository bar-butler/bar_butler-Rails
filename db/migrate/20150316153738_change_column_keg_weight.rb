class ChangeColumnKegWeight < ActiveRecord::Migration
  def change
    change_column :beers, :keg_weight, :integer, default: 30 
  end
end

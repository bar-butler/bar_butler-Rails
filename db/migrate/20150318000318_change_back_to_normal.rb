class ChangeBackToNormal < ActiveRecord::Migration
  def change
    change_column :beers, :keg_weight, :float, default: nil
  end
end

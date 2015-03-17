class ChangeToFloat < ActiveRecord::Migration
  def change
    change_column :beers, :weight, :float
    change_column :beers, :keg_weight, :float
    change_column :drinks, :amount, :float
  end
end

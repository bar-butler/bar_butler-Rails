class ChangeToFloat < ActiveRecord::Migration
  def change
    remove_column :beers, :weight
    remove_column :beers, :keg_weight

    change_column :drinks, :amount, :float

    add_column :beers, :weight, :float
    add_column :beers, :keg_weight, :float
  end
end

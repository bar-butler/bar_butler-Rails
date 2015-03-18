class AddColumnKegWeight < ActiveRecord::Migration
  def change
    add_column :beers, :keg_weight, :float, default: 30.0
  end
end

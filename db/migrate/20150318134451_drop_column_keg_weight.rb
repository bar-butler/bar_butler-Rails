class DropColumnKegWeight < ActiveRecord::Migration
  def change
    remove_column :beers, :keg_weight
  end
end

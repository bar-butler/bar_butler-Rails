class AddKegNumberToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :keg_number, :integer
  end
end

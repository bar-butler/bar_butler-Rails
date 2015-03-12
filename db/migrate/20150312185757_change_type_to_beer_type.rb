class ChangeTypeToBeerType < ActiveRecord::Migration
  def change
    rename_column :beers, :type, :beer_type
  end
end

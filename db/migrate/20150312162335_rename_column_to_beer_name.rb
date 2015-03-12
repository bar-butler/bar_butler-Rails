class RenameColumnToBeerName < ActiveRecord::Migration
  def change
    rename_column :beers, :name, :beer_name
  end
end

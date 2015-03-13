class DropColumnContainer < ActiveRecord::Migration
  def change
    remove_column :beers, :container
  end
end

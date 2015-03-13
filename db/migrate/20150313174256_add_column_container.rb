class AddColumnContainer < ActiveRecord::Migration
  def change
    add_column :beers, :container, :boolean
  end
end

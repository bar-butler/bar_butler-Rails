class ChangeColumnContainer < ActiveRecord::Migration
  def change
    change_column :beers, :container, :boolean, default: false
  end
end

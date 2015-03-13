class DropTables < ActiveRecord::Migration
  def change
    drop_table :cans
    drop_table :bottles
  end
end

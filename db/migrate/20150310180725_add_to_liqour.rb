class AddToLiqour < ActiveRecord::Migration
  def change
    add_column :liquors, :bottle_count, :integer
  end
end

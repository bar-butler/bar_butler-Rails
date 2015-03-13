class RenameColumnDrinks < ActiveRecord::Migration
  def change
    rename_column :drinks, :drink_number, :amount
  end
end

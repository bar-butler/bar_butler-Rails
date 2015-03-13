class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :drinks, :drank, :drink_number
  end
end

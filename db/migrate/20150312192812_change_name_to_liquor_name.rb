class ChangeNameToLiquorName < ActiveRecord::Migration
  def change
    rename_column :liquors, :name, :liquor_name
  end
end

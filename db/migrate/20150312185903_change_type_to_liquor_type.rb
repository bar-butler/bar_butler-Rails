class ChangeTypeToLiquorType < ActiveRecord::Migration
  def change
    rename_column :liquors, :type, :liquor_type
  end
end

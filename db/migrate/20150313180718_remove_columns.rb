class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :cans, :can_name
    remove_column :cans, :can_type
  end
end

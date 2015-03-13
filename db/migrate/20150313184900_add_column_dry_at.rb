class AddColumnDryAt < ActiveRecord::Migration
  def change
    add_column :beers, :dry_at, :datetime
  end
end

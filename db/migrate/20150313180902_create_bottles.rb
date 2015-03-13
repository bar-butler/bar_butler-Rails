class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.integer :beer_id
      t.integer :bottle_count
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

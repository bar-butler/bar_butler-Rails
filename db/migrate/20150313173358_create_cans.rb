class CreateCans < ActiveRecord::Migration
  def change
    create_table :cans do |t|
      t.string :can_name
      t.string :can_type
      t.integer :beer_id
      t.integer :can_count
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

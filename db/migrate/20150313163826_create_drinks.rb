class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.integer :beer_id
      t.integer :liquor_id
      t.integer :drank
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

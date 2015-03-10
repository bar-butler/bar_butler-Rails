class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :type
      t.integer :user_id
      t.string :weight
      t.string :keg_weight
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

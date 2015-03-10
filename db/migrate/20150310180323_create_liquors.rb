class CreateLiquors < ActiveRecord::Migration
  def change
    create_table :liquors do |t|
      t.string :name
      t.string :type
      t.integer :user_id
      t.integer :case_id
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

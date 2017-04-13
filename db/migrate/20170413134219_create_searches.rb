class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :query, null: false
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

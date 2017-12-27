class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.date :date
      t.text :text
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

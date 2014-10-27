class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :meal_type
      t.integer :cooktime
      t.integer :servingsize
      t.text :instructions
      t.string :image_url
      t.integer :book_id

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :image_url
      t.text :content

      t.timestamps
    end
  end
end

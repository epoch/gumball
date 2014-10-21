class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, :null => false
      t.decimal :price, :precision => 10, :scale => 2
      t.string :category

      t.timestamps
    end
  end
end

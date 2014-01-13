class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.string :category
      t.string :sub_category

      t.timestamps
    end
  end
end

class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :brand
      t.text :description
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end

class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :name
      t.string :brand
      t.text :description
 
      t.timestamps
    end
  end
end

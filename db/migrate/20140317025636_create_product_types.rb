class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :name, :null => false
      t.string :brand, :null => false
      t.text :description, :null => false
 
      t.timestamps
    end
  end
end

class CreateStore < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, :null => false
      t.string :address, :null => false
      t.text :description, :null => false
 
      t.timestamps
    end
  end
end

class CreateBargains < ActiveRecord::Migration
  def change
    create_table :bargains do |t|
      t.decimal :price, :null => false
      t.belongs_to :store, :null => false
      t.belongs_to :user, :null => false    #owner
      t.belongs_to :product_type, :null => false

      t.text :description
 
      t.timestamps
    end
  end
end

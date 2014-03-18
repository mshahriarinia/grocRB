class CreateBargains < ActiveRecord::Migration
  def change
    create_table :bargains do |t|
      t.decimal :price
      t.belongs_to :store
      t.belongs_to :user    #owner
      t.belongs_to :product_type

      t.text :description
 
      t.timestamps
    end
  end
end

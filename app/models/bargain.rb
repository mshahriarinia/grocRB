class Bargain < ActiveRecord::Base
#  Bargain.create!(:price => 64, :store_id => 1, :user_id => 1, :product_type_id => 4, :description => 'good deal')
  belongs_to :store
  belongs_to :user
  belongs_to :product_type

  validates :price, :presence => true
  validates :store, :presence => true
  validates :user, :presence => true
  validates :product_type, :presence => true  
  validates :description, length: { maximum: 2000 }
  
end

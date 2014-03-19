class ProductType < ActiveRecord::Base
  has_many :bargains

  validates :name, :presence => true
  validates :brand, :presence => true
  validates :description, :presence => true, length: { maximum: 1300 }
end

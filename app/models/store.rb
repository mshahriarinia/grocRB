class Store < ActiveRecord::Base
  has_many :bargains

  validates :name, :presence => true
  validates :address, :presence => true
  validates :description, length: { maximum: 2000 }
end
